app.controller('products', ['$scope','$http','$stateParams','$state','$modal','gadgets', function($scope,$http,$stateParams,$state,$modal,$gadgets_services) {  
$scope.list_headers = ['id','name','companyname','actions']

  $scope.deleteItem = function(gadgetid) {
    if (gadgetid > 0) {
      var c = confirm('Do you really want to delete the gadget?');
        if(c){
          response = $gadgets_services.single.remove(gadgetid).then(function(response){
            if(response.status=200){
              $state.go('products', {}, {reload: true})
            }else {
              console.log("faile cause for server side response")
            }
          });         
        }else {
          console.log("this is testing fail action")
        }
    }
  };

  $scope.search_gadgets = function(product){
    return $http.get('/api/v2/gadgets/',{params: {gadgets: product}}).success(function(response) { 
      $scope.list_items = response;
      }).error(function(response) {
    });
    };

// this is edit gadget information with popup modal
  $scope.open = function(size,gadgetid){
    var modalInstance = $modal.open({
      templateUrl: '/assets/project/views/products/edit_gadget.html',
      controller: 'createCourseCtrl',
      size: size,
      resolve: {
        items: function () {
        return $gadgets_services.modal.get(gadgetid)
        }
      }
    });
  };

  $scope.deleteItem();
  $scope.search_gadgets();
  // $scope.open();
  $http.get("http://localhost:3000/api/v2/gadgets.json")
  .success(function(response) {$scope.list_items = response;});
}]);


// reload
 //$state.transitionTo($state.current, $stateParams, {
                   // reload: true,
                    // inherit: false,
                    // notify: true
                // });



// return $http.delete('/api/v2/gadgets/'+ gadgetid).success(function(response) { 
//              $state.go('products',null,{reload: true,location:'/products'})
//              }).error(function(response) {
//             toastr.error('There is a server error while deleting the course');
//             });
