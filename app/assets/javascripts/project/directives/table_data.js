myapp = angular.module("myapp.directives", []);

myapp.directive('totalproducts', function() {
  return {
      restrict: 'E',
      scope:true,
      link: function(scope, element, attributes){
        attributes.$observe('listproducts', function(values){
          scope.listproducts = JSON.parse(values);
        });
      },
        templateUrl: "/assets/project/views/products/list_of_products.html"
    };
});

// doubt traschdule
// doubt controller inside 

 // scope.fullname = attributes.first + '' + attributes.last

 // attributes.$observe('totalproducts', function(values){
      //       scope.totalproducts = values
      //       });
