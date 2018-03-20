"use strict";

var express = require('express');
var app = express();

////////////////////////////////////////
//////////Require node_modules//////////
////////////////////////////////////////
//var express = require('express');
//var routes = require('./src/routes');
var http = require('http');
//var path = require('path');
//var bodyParser = require('body-parser');
//var mysql = require('mysql');


////////////////////////////////////////
////////Require internal modules////////
////////////////////////////////////////
var connection = require("./src/config/config.js");
var app = require("./src/config/configExpress.js");

require('./src/routes/routes')(app);







////////////////////////////////////////
///////Load Variable Environment////////
////////////////////////////////////////
//var ConfigEntorno = require('./src/config/envVariables.js');
var ConfigEntorno = require('./src/config/environmentConfig.js');
let ConfigEntornoAmbiente = ConfigEntorno.EnvironmentConfig();
console.log( ConfigEntornoAmbiente.PORT );
console.log( ConfigEntornoAmbiente.SERVERURL );



//app.configure(function() {
  //app.set('connection', connection);
  //app.set('app', app);
//});


/*
http.createServer(app).listen( ConfigEntornoAmbiente.PORT , function(){
  console.log('Express Server Listening ON Port ' + ConfigEntornoAmbiente.PORT );
});
*/


