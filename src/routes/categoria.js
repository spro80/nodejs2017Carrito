var express = require('express');
var router = express.Router();


router.get('/categoria', function (req, res){
	res.send('GET categoria');
});

module.exports = router;
