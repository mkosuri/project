app.controller('ExampleController', ['$scope','$http','$stateParams','gadgets','$state', function($scope,$http,$stateParams,$gadgets_services,$state) {
  $scope.submit = function(isvalid,product) {
    if (isvalid) {
      response = $gadgets_services.single.post(product).then(function(response){
          if(response.status=200){
            $state.go('products');
          } else {
            console.log("agin goes to the new page")
          }
        });
    }
  };
  $scope.reset = function() {
     $scope.product = angular.copy($scope.master);
   };
  $scope.reset();
    }]);
