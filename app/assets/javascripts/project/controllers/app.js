console.log("this is app js file")
var app = angular
    .module('myApp', ['myApp.providers','myApp.services','myapp.directives','ui.router', 'ui.router.state','ui.bootstrap']).config(['$stateProvider', function ($stateProvider) {
        $stateProvider
          .state('products', {
            url: "/products",
            views: {
            'container': {
              templateUrl: "/assets/project/views/products/total_products.html"
              }
            }
          })
          .state('productsitem', {
            url: "/products/show/:id",
            views: {
            'showgadget': {
              templateUrl: "/assets/project/views/products/show_products.html"
              }
            }
          })
          .state('newproduct', {
            url: "/products/new",
            views: {
            'newform': {
              templateUrl: "/assets/project/views/products/new_product.html"
              }
            }
          })
          .state('deleteproduct', {
            url: "/products/:id",
            views: {
            'deleteproduct': {
              templateUrl: "/assets/project/views/products/total_products.html",
              controller:'products'
              }
            }
          })
    }]);