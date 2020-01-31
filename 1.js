 var app = angular.module('myApp',[]);
 app.controller('MyController',  function($scope){
    $scope.rs = function(register){
      register.$setPristine();
    }
 })