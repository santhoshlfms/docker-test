var express = require('express');
var app = express();

app.use('/adminsetup', express.static('build/cratosys-app'));

app.listen(7070);