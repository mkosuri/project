app.controller("HomeCtrl", ['$scope', '$http', '$stateParams','gadgets','clientId', function($scope,$http, $stateParams,$gadgets_services,clientId) {
$scope.clientId = clientId.clientId;
response = $gadgets_services.single.get($stateParams.id).then(function(response){
  console.log(response.data)
  $scope.names =response.data
});
}]);
