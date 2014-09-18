var myApp = angular.module('myApp.providers', []);
myApp.value('clientId', 'a12345654321x');

app.factory("clientId", function () {
  return {
    clientId: "a12345654321x"
  };
});

// to provide the constvalue with provides
