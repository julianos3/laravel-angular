angular.module('app.controllers')
    .controller('ProjectNoteShowController',['$scope', '$location', '$routeParams', 'Client', function($scope, $location, $routeParams, Client){
        $scope.client = new Client.query();


    }]);