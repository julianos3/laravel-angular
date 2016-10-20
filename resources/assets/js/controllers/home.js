angular.module('app.controllers')
    .controller('HomeController', ['$scope', '$cookies', 'Project', function($scope, $cookies, Project) {
        //console.log($cookies.getObject('user').email);
        $scope.project = {

        };

        Project.query({
            orderBy: 'created_at',
            sortedBy: 'desc',
            limit: 5
        }, function(response){
            $scope.projects = response.data;
        });
    }]);