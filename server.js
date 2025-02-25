const express = require('express');
const app = express();
const cors = require('cors');
const bodyParser = require('body-parser');
require('dotenv').config();

app.use(cors());
app.use(bodyParser.json());

app.get('/', (req, res) => {
    res.send('Client & Project Management API Running');
});

const PORT = process.env.PORT || 5000;
app.listen(PORT, () => console.log(`Server running on port ${PORT}`));
