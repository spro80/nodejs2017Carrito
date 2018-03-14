
module.exports = function ( app ){
	console.log(app);
	
	var indexRoutes = require('./indexRoutes')(app);
	var loginRoutes = require('./loginRoutes')(app);
	var categoriasRoutes = require('./categoriasRoutes')(app);
	
}
