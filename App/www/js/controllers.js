angular.module('FortuneCookie.controllers', [])

.controller('CookieCtrl', function($scope){

    $scope.smashCookie = function(callback) {
        var xmlHttp = new XMLHttpRequest();
        
        xmlHttp.onreadystatechange = function() { 
            if (xmlHttp.readyState == 4 && xmlHttp.status == 200)
                callback(xmlHttp.responseText);
        }
        
        xmlHttp.open("GET", "http://localhost:3000/random", true); // true for asynchronous 
        xmlHttp.send(null);
    };
  
	  $scope.showMessage = function(message) {
	      alert(message);
    };
  
});
