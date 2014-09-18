app.controller('createCourseCtrl', [
  '$scope','$modalInstance','$stateParams','items','gadgets','$state',
  function($scope, $modalInstance,$stateParams,items,$gadgets_services,$state) {

    $scope.cancel = function() {
      $modalInstance.dismiss();
    };
    
   $scope.submit = function(product) {
    response = $gadgets_services.single.put(product).then(function(response){
      if(response.status=200){
        $modalInstance.close();
        $state.go('products', {}, {reload: true})
      } else {
        console.log("agin goes to the new page")
      }
    });
      // $modalInstance.close();
     };
    $scope.items = items.data
  }
]);
