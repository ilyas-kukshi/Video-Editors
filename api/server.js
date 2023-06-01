const express = require('express')
const mongoose = require('mongoose')
const morgan = require("morgan");
const bodyParser = require("body-parser");
const jwt = require('jsonwebtoken')

const app = express()
const port = 3000

app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

app.get('/', (req, res) => {
    res.send('Wassup World!')
})

const bcrypt = require("bcrypt");
const User = require('../api/models/user_signin')
app.post("/signup", (req, res, next) => {
    User.find({ email: req.body.email })
        .exec()
        .then(user => {
            if (user.length >= 1) {
                return res.status(409).json({
                    message: "Mail exists"
                });
            }
            bcrypt.hash(req.body.password, 10, (err, hash) => {
                if (err) {
                    console.log(err);

                    return res.status(500).json({
                        error: err
                    });
                }
                const user = new User({
                    email: req.body.email,
                    password: hash
                });
                user.save()
                    .then(result => {
                        console.log(result);
                        res.status(201).json({
                            "userId" : result._id
                        });
                    })
                    .catch(err => {
                        console.log(err);
                        res.status(500).json({
                            error: err
                        });
                    });

            });

        });
});

app.post("/login", (req, res, next) => {
    User.find({ email: req.body.email })
        .exec()
        .then(user => {
            if (user.length < 1) {
                return res.status(401).json({
                    message: "Auth failed"
                });
            }
            bcrypt.compare(req.body.password, user[0].password, (err, result) => {
                if (err || !result) {
                    return res.status(401).json({
                        message: "Auth failed"
                    });
                }

                const token = jwt.sign(
                    {
                        email: user[0].email,
                        userId: user[0]._id
                    },
                    process.env.JWT_KEY,
                    {
                        expiresIn: "1h"
                    }
                );

                Resume.findOne({ userId: user[0]._id })
                    .exec()
                    .then(resume => {
                        const resumeCreated = resume !== null;

                        return res.status(200).json({
                            userId: user[0]._id,
                            message: "Auth successful",
                            token: token,
                            resumeCreated: resumeCreated
                        });
                    })
                    .catch(err => {
                        console.log(err);
                        return res.status(500).json({
                            error: err
                        });
                    });


            });
        })
        .catch(err => {
            console.log(err);
            res.status(500).json({
                error: err
            });
        });
});

const Resume = require('../api/models/resume_model');

// Create a new resume
app.post('/resumes', (req, res) => {
    console.log(req.body)
    const { userId, personalInfo, education, skills } = req.body;
    const resume = new Resume({
        userId: new mongoose.Types.ObjectId(userId),
        personalInfo,
        education,
        skills
    });

    resume.save()
        .then(savedResume => {
            res.status(201).json(savedResume);
        })
        .catch(error => {
            console.error('Error saving resume:', error);
            res.status(500).json({ error: 'Failed to create resume ' + error });
        });
});



app.get('/resumes', (req, res) => {
    console.log(req.query)
    const { userId } = req.query;

    Resume.findOne({ userId })
        .then(resume => {
            if (!resume) {
                return res.status(404).json({ error: 'Resume not found' });
            }
            res.json(resume);
        })
        .catch(error => {
            console.error('Error retrieving resume:', error);
            res.status(500).json({ error: 'Failed to retrieve resume' });
        });
});

const Work = require('./models/work_model');

app.post('/addwork', (req, res) => {
    const { userId, videoLink, title, description, clientName, category } = req.body;

    const work = new Work({
        userId,
        videoLink,
        title,
        description,
        clientName,
        category,
    });

    work.save()
        .then(savedWork => {
            res.status(201).json(savedWork);
        })
        .catch(error => {
            console.error('Error saving work:', error);
            res.status(500).json({ error: 'Failed to create work' });
        });
});

app.get('/getworks', (req, res) => {
    const { userId } = req.query;

    Work.find({ userId: userId })
        .then(works => {
            console.log(works)
            if (works.length === 0) {
                return res.status(404).json({ message: 'No works found' });
            }

            res.status(200).json(works);
        })
        .catch(error => {
            console.error('Error fetching works:', error);
            res.status(500).json({ error: 'Failed to fetch works' });
        });
});

app.get('/getworks/category', (req, res) => {
    const { userId, category } = req.query;

    Work.find({ userId: userId, category })
        .then(works => {
            console.log(works)
            if (works.length === 0) {
                return res.status(404).json({ message: 'No works found' });
            }

            res.status(200).json(works);
        })
        .catch(error => {
            console.error('Error fetching works:', error);
            res.status(500).json({ error: 'Failed to fetch works' });
        });
});

mongoose.connect("mongodb+srv://ilyaskukshi:ilyaskukshi@cluster0.bn4aw.mongodb.net/Video-Editors?retryWrites=true&w=majority")
    .then(() => {
        console.log("connected")
        app.listen(port, () => {
            console.log(`Example app listening on port ${port}`)
        })
    }).catch((error) => {
        console.log(error)
    })