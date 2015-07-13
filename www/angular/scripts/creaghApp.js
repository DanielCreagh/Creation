angular.module('creationApp', ['dataService'])
.controller('creaghController', function($scope, dataService, $http) {
		var vm = this;
		vm.nav = "About";
		vm.projectsNav = "Main";

    dataService.sayHello();
    dataService.getContactsData();

		$http.get('data/projectCategories.JSON').
      success(function(data, status, headers, config) {
        vm.projectcategories = data;
      }).
      error(function(data, status, headers, config) {
        console.log(data);
      });

    $http.get('data/contactsData.JSON').
      success(function(data, status, headers, config) {
        vm.contactsData = data;
      }).
      error(function(data, status, headers, config) {
        console.log(data);
      });

    $http.get('data/flashProjectsData.JSON').
      success(function(data, status, headers, config) {
        vm.flashProjectsData = data;
      }).
      error(function(data, status, headers, config) {
        console.log(data);
      });

    $http.get('data/html5ProjectsData.JSON').
      success(function(data, status, headers, config) {
        vm.html5ProjectsData = data;
      }).
      error(function(data, status, headers, config) {
        console.log(data);
      });

    $http.get('data/iOSProjectsData.JSON').
      success(function(data, status, headers, config) {
        vm.iOSProjectsData = data;
      }).
      error(function(data, status, headers, config) {
        console.log(data);
      });

    $http.get('data/otherProjectsData.JSON').
      success(function(data, status, headers, config) {
        vm.otherProjectsData = data;
      }).
      error(function(data, status, headers, config) {
        console.log(data);
      });
	});