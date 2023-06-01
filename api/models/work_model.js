const mongoose = require('mongoose');

const workSchema = new mongoose.Schema({
    userId: {
        type: mongoose.Schema.Types.ObjectId,
    },
    videoLink: {
        type: String,
        required: true,
    },
    title: {
        type: String,
        required: true,
    },
    description: {
        type: String,
        required: true,
    },
    clientName: {
        type: String,
        required: true,
    },
    category: {
        type: String,
        required: true,
        index: true, // Add index for efficient filtering
    },
});

const Work = mongoose.model('Work', workSchema);
module.exports = Work;
