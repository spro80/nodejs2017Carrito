var express = require('express');
var app = express();
app.set('port', (process.env.PORT || 5000));

app.get('/', function (req, res) {
  res.send('Hola Mundo');
});

app.listen(app.get('port'), function() {
  console.log('Node corre en el puerto ', app.get('port'));
});
