angular.module('app.controllers')
    .controller('ProjectRemoveController',[
        '$scope', '$routeParams','$location', '$cookies', 'Project',
        function($scope, $routeParams, $location, $cookies, Project){
        $scope.project = new Project.get({id: $routeParams.id});

        $scope.remove = function () {
            $scope.project.$delete({id: $scope.project.id}).then(function () {
                $location.path('/projects/');
            });
        }

    }]);