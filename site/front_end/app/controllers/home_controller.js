/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

apanaApp.controller('homeController', function($location, $scope, $rootScope){
    $scope.page_title = 'Home';

    $scope.oauth_return = $rootScope.accesstoken;

});
