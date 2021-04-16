var express = require('express');
var port = 3000;
var app = express();

app.use(express.static(__dirname + '/html'));

app.listen(port, function() {
    console.log('server listening on port ' + port);
});
