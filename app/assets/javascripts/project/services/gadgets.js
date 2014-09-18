var myApp = angular.module('myApp.services', []);
myApp.factory('gadgets',['$http',function($http) {
  //default object
  console.log("this services area")
  var get_default = function() {
    return {
        list: [],
        single: {},
        statuses: [],
        product:{}
    };
  }
  
  var get_gadget_info = function (gadget) {
    return $http.get('/api/v2/gadgets/'+ gadget).
      success(function(response) 
      { 
        console.log("this is success response")
      }).error(function(response) {
      console.log("fail the error")
    });
           
  }

  var edit_gadget_info = function(gadgetid){
    return $http.get('/api/v2/gadgets/'+gadgetid+'/edit')
      .success(function(response){
    })
      .error(function(response){
      console.log("this error messages")
    });
  }

  var create_gadget = function(product){
    return $http.post('/api/v2/gadgets',{gadgets:product})
      .success(function(response){
    })
      .error(function(response){
      console.log("this error messages")
    });
  }

  var updata_gadget = function(product){
    return $http.put(' /api/v2/gadgets/'+ product.id,{gadgets:product})
      .success(function(response){
    })
      .error(function(response){
      console.log("this error messages")
    });
  }

  var remove_gadget = function(gadgetid){
    return $http.delete('/api/v2/gadgets/'+gadgetid)
      .success(function(response){
    })
      .error(function(response){
      console.log("this error messages")
    });
  }

 //Public facing API
  return {
    modal: {
        get: edit_gadget_info
    },
    single: {
      get: get_gadget_info,
      post: create_gadget,
      put: updata_gadget,
      remove: remove_gadget
    }
  };

}]);
