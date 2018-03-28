"use strict";

//Get Parameters Of Configuration BD
//var ConfigBD = require("./configBD.js");
//var BD = new ConfigBD("develop"); 
//var configBD = BD.getConfigBD();

//Require
var mysql = require('mysql');

//Read environment variables.
var ConfigEntorno = require('./environmentConfig.js');
let ConfigEntornoAmbiente = ConfigEntorno.EnvironmentConfig();
//console.log( ConfigEntornoAmbiente.PORT );
//console.log( ConfigEntornoAmbiente.SERVERURL );


console.log("////////////////////////////////////////////////***");
console.log( "ConfigEntornoAmbiente.BD_HOST: " + ConfigEntornoAmbiente.BD_HOST );
console.log( "ConfigEntornoAmbiente.BD_USER: " + ConfigEntornoAmbiente.BD_USER );
console.log( "ConfigEntornoAmbiente.BD_PASS: " + ConfigEntornoAmbiente.BD_PASS );
console.log( "ConfigEntornoAmbiente.BD_DATABASE: " + ConfigEntornoAmbiente.BD_DATABASE );
console.log("////////////////////////////////////////////////***");


var connection = mysql.createConnection({
        
    host     : ConfigEntornoAmbiente.BD_HOST, //"localhost",//configBD.host,
    user     : ConfigEntornoAmbiente.BD_USER, //"spro80",//configBD.user,
    password : ConfigEntornoAmbiente.BD_PASS,//"808080",//configBD.password,
    database : ConfigEntornoAmbiente.BD_DATABASE//"carritoresponsive"//configBD.database

/*
    host     : "us-cdbr-iron-east-05.cleardb.net", //"localhost",//configBD.host,
    user     : "bdfb4388ca15a4", //"spro80",//configBD.user,
    password : "f5ff3602",//"808080",//configBD.password,
    database : "heroku_6d8ab0ca6d86149"//"carritoresponsive"//configBD.database
  */  
});


/*
connection.connect( function(err){
    
    console.log("CONECTANDO CON BASE DE DATOS!!!");
    if(!err) {
        console.log("[config.js] Database is connected ... !!");    
    }else {
        console.log("[config.js] Error connecting database ... !!");
	connection.end();
	console.log( "***********************************" );
	console.log( err );
	console.log( "***********************************" );	    
    }
    
});

module.exports = connection;
*/


//var connection;

var db_config = {
    host: ConfigEntornoAmbiente.BD_HOST,
    user: ConfigEntornoAmbiente.BD_USER,
    password: ConfigEntornoAmbiente.BD_PASS,
    database: ConfigEntornoAmbiente.BD_DATABASE
};

var connection;

function handleDisconnect() {
  connection = mysql.createConnection(db_config); // Recreate the connection, since
                                                  // the old one cannot be reused.

  connection.connect(function(err) {              // The server is either down
    if(err) {                                     // or restarting (takes a while sometimes).
      console.log('error when connecting to db:', err);
      setTimeout(handleDisconnect, 2000); // We introduce a delay before attempting to reconnect,
    }                                     // to avoid a hot loop, and to allow our node script to
  });                                     // process asynchronous requests in the meantime.
                                          // If you're also serving http, display a 503 error.
  connection.on('error', function(err) {
    console.log('db error', err);
    if(err.code === 'PROTOCOL_CONNECTION_LOST') { // Connection to the MySQL server is usually
      handleDisconnect();                         // lost due to either server restart, or a
    } else {                                      // connnection idle timeout (the wait_timeout
      throw err;                                  // server variable configures this)
    }
  });
}

handleDisconnect();

module.exports = connection;


