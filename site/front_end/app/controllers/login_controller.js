/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

apanaApp.controller('loginController', function($location, $scope, $rootScope){

    ////////////////////////////////////////////////////////////////////////////
    // Initialize Variables

    var get_auth_return;

    $scope.page_title = 'Login'
    $scope.show_auth_result = false;

    /////////////////////////////////////////
    // get oauth access token

    $scope.login = function() {
      	var client_id="966850093313-6po09nbe9adflkch52u6a2r8spjrb5o5.apps.googleusercontent.com";
      	var scope="email";
      	var redirect_uri="http://vagrant.apana.us";
      	var response_type="token";
      	var url="https://accounts.google.com/o/oauth2/auth?scope="+scope+"&client_id="+client_id+"&redirect_uri="+redirect_uri+
      	"&response_type="+response_type;
      	window.location.replace(url);
      };

      get_auth_return = function(){
        if($rootScope.accesstoken){
          $scope.show_auth_result = true;
          $scope.oauth_return = $rootScope.accesstoken;
        }
      }

      ////////////////////////////////////////////////////////////////////////////
      // functions to run on page load

      get_auth_return();
});
