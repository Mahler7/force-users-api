(function(){
  "use strict";

  angular.module("app").controller("force_users_ctrl", function($scope, $http){

    $scope.setup = function(){
      $http.get('/api/v1/force_users.json').then(function(response){
        $scope.force_users = response.data;
      });
      $scope.descending = false
    };

    $scope.addNewForceUser = function(newName, newTitle, newLightsaberColor, newAffiliation, newLocation, newDarkOrLight){

      var newForceUser = {
        name: newName,
        title: newTitle,
        lightsaber_color: newLightsaberColor,
        affiliation: newAffiliation,
        location: newLocation,
        dark_or_light: newDarkOrLight
      };

      $http.post('/api/v1/force_users.json', newForceUser).then(function(response){
        console.log(response);
        $scope.force_users.push(response.data);
      }, function(response){
          $scope.errors = response.data.errors;
      
      });
    };

    $scope.sortBy = function(sortForceUser){

      if($scope.sortByForceUser != $scope.sortForceUser){
        $scope.descending = false;
      } else {
        $scope.descending = !$scope.descending;
      }
      $scope.sortByForceUser = sortForceUser;

    };

    window.scope = $scope

  });

}());