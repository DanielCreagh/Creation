angular.module('creationApp', [])
.controller('creaghController', function($scope, $http) {
		var vm = this;
		vm.nav = "Projects";
		vm.projectsNav = "Main";

		$http.get('data/projectCategories.JSON').
    success(function(data, status, headers, config) {
      vm.projectcategories = data;
    }).
    error(function(data, status, headers, config) {
      // log error
    });
	});