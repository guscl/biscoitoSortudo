angular.module('FortuneCookie.controllers', [])

.controller('CookieCtrl', function($scope){
    
    $scope.message = "Smash it!";
    
    $scope.smashCookie = function() {
        
        var xmlHttp = new XMLHttpRequest();        
        xmlHttp.open("GET", "http://localhost:3000/random", false); // true for asynchronous 
        xmlHttp.send(null);
        
        var tmp = JSON.parse(xmlHttp.responseText);
        $scope.message = tmp['content'];
    };
  
});
