const express = require('express')
const mongoose = require('mongoose')

const app = express()
const port = 3000

app.get('/', (req, res) => {
    res.send('Wassup World!')
})



mongoose.connect("mongodb+srv://ilyaskukshi:ilyaskukshi@cluster0.bn4aw.mongodb.net/Video-Editors?retryWrites=true&w=majority")
    .then(() => {
        console.log("connected")
        app.listen(port, () => {
            console.log(`Example app listening on port ${port}`)
        })
    }).catch((error) => {
        console.log(error)
    })