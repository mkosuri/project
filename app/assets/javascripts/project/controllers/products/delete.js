app.controller('ProductsdeleteCtrl', ['$scope','$http','$stateParams', function($scope,$http,$stateParams) {
  $http.post('/api/v2/gadgets',{gadgets:dataToPost}) 
}]);
