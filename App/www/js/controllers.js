angular.module('FortuneCookie.controllers', [])

.controller('CookieCtrl', function($scope){
    
    $scope.message = "Smash it!";
    $scope.imgUrl = "images/cookie.jpeg";
    
    $scope.smashCookie = function() {
        
        var xmlHttp = new XMLHttpRequest();        
        xmlHttp.open("GET", "http://45.55.54.107:3000/random", false); // true for asynchronous 
        xmlHttp.send(null);
        
        var tmp = JSON.parse(xmlHttp.responseText);
        $scope.message = tmp['content'];
    };
  
});
