angular.module('app.controllers')
    .controller('ProjectDashBoardController', [
        '$scope', '$location', '$routeParams', 'Project',
        function ($scope, $location, $routeParams, Project) {
            $scope.project = {

            };

            Project.query({
                orderBy: 'created_at',
                sortedBy: 'desc',
                limit: 5
            }, function(response){
                $scope.projects = response.data;
            });

            $scope.showProject = function(project){
                $scope.project = project;
            }
        }]);