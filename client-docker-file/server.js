var express = require('express');
var app = express();

app.use('/', express.static('dist/cratosys-app'));

app.listen(6060);