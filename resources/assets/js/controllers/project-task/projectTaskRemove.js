angular.module('app.controllers')
    .controller('ProjectTaskRemoveController',[
        '$scope', '$location', '$routeParams', 'ProjectTask',
        function($scope, $location, $routeParams, ProjectTask){
        $scope.projectTask = new ProjectTask.get({
            id: $routeParams.id,
            taskId: $routeParams.taskId
        }); //pega a task pelo id

        $scope.remove = function () {
            $scope.projectTask.$delete({
                id: $routeParams.id,
                taskId: $scope.projectTask.id
            }).then(function () {
                $location.path('/project/'+$routeParams.id+'/tasks');
            });
        }

    }]);