apanaApp.config(function ($routeProvider, $locationProvider) {

	// use the HTML5 History API to make urls pretty
	$locationProvider.html5Mode(true); //this removes the hashtag in the url but page refreshes no longer work
	$locationProvider.hashPrefix('');

	// Root
	$routeProvider

	.when('/', {
	  redirectTo: '/login',
	})
	.when('/logout', {
	  controller: 'logoutController',
	  templateUrl: '/views/homeView.html',
	})

	/// Login
	.when('/login',{
	  controller: 'loginController',
	  templateUrl: '/views/login.html'
	})

	.when('/access_token=:accessToken', {
           template: '',
           controller: function ($location,$rootScope) {
             var hash = $location.path().substr(1);

             var splitted = hash.split('&');
             var params = {};

             for (var i = 0; i < splitted.length; i++) {
               var param  = splitted[i].split('=');
               var key    = param[0];
               var value  = param[1];
               params[key] = value;
               $rootScope.accesstoken=params;
             }
             $location.path("/home");
           }
         })

	/// Home
	.when('/home', {
		controller: 'homeController',
		templateUrl: '/views/home.html'
	})

	// Catch-all
	.otherwise({
	  redirectTo: '/',
	});

});
