var authControl = require('../controllers/authentication');
var categoryControl = require('../controllers/categoryController');
var searchControl = require('../controllers/searchController');
var profileControl = require('../controllers/profileController');

var Cart = require('../models/cartModel');
var Product = require('../models/productModel');

module.exports = function(router, passport){
	router.get("/", function(req, res, next){ authControl.getRoot(req, res, next) });

	router.get("/profile", function(req, res, next){ profileControl.getProfile(req, res, next) });

	router.get("/updateprofile", function(req, res, next){ profileControl.getUpdateProfile(req, res, next) });

	router.get("/updatepassword", function(req, res, next){ profileControl.getUpdatePassword(req, res, next) });

	router.get("/changeavatar", function(req, res, next){ profileControl.getAvatar(req, res, next) });

	router.get("/index", function(req, res, next){ authControl.getRoot(req, res, next) });

	router.get("/search", function(req, res, next){ searchControl.getCategory(req, res, next) });

	router.get("/category", function(req, res, next){ categoryControl.getCategory(req, res, next) });

	router.get("/chitiet:id", function(req, res, next){ authControl.getChitiet(req, res, next) });

	router.get('/registration', function(req, res, next){ authControl.getRegistration(req, res, next) });

	router.get('/blog', function(req, res, next){ authControl.getBlog(req, res, next) });

	router.get('/cart', function(req, res, next){ authControl.getCart(req, res, next) });

	router.get('/checkout',function(req, res, next){ authControl.getCheckout(req, res, next) });

	router.get('/contact', function(req, res, next){ authControl.getContact(req, res, next) });

	router.get('/forgetPassword', function(req, res, next){ authControl.getForget(req, res, next) });

	router.get('/confirmation', function(req, res, next){ authControl.getConfirmation(req, res, next) });

	router.get('/login', function(req, res, next){ authControl.getLogin(req, res, next) });

	router.get('/logout', function(req, res, next){ authControl.getLogout(req, res) });

	router.get('/add-to-cart/:id', function(req, res, next){ authControl.getAddToCart(req, res, next) });

	router.get('/clear-cart', function(req, res, next){ authControl.getClear(req, res, next) })

	router.get('/pay', function(req, res, next){ authControl.getPay(req, res, next)	})

	//POST
	router.post('/checkout', function(req, res, next){ authControl.postCheckout(req, res, next)	})

	router.post('/login', passport.authenticate('local-login', 
		{
			successRedirect: '/index',
			failureRedirect: '/login',
			failureFlash: true
		}), function(req, res) { authControl.postLogin(req, res) });

	router.post('/registration', passport.authenticate('local-signup', {
		successRedirect: '/registration',
		failureRedirect: '/registration',
		failureFlash: true
	}));
	
	router.post("/chitiet:id", function(req, res, next){ authControl.postChitiet(req, res, next)});

	router.post("/previewavatar", function(req, res, next){ profileControl.postPreviewAvatar(req, res, next) });

	router.post("/changeavatar", function(req, res, next){ profileControl.postAvatar(req, res, next) });

	router.post("/updateprofile", function(req, res, next){ profileControl.postUpdateProfile(req, res, next) });

	router.post("/updatepassword", function(req, res, next){ profileControl.postUpdatePassword(req, res, next) });

	router.get("/verify", function(req, res, next){ authControl.postVerify(req, res, next) });
};