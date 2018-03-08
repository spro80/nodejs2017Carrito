var express = require('express');
var router = express.Router();

//module.exports = function (req, res){
//	res.render( 'index', { title: 'El titulo es Hello World' } );
//};


router.get('/', function (req, res){
	res.send('Hello World');
});


module.exports = router;
