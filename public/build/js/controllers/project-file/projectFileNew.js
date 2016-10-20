angular.module('app.controllers')
    .controller('ProjectFileNewController',['$scope', '$location', '$routeParams', 'appConfig', 'Url', 'Upload',
        function($scope, $location, $routeParams, appConfig, Url, Upload){
        //$scope.projectFile = new ProjectFile();

        console.log(Url.getUrlResource('/project/{{id}}/files/{{idFile}}'));
        console.log(Url.getUrlFromUrlSymbol('/project/{{id}}/files/{{idFile}}', {id: 1, idFile: 10}));

        $scope.save = function () {
            if($scope.form.$valid){
                //console.log($scope.projectFile);
                var url = appConfig.baseUrl + Url.getUrlFromUrlSymbol(appConfig.urls.projectFile,{
                        id: $routeParams.id,
                        idFile: '',
                        project_id: $routeParams.id
                    });
                Upload.upload({
                    url: url,
                    fields: {
                        name: $scope.projectFile.name,
                        description: $scope.projectFile.description,
                        project_id: $routeParams.id
                    },
                    file: $scope.projectFile.file
                }).then(function (resp) {
                    //console.log('Success ' + resp.config.data.file.name + 'uploaded. Response: ' + resp.data);
                    $location.path('/project/'+$routeParams.id+'/files');
                });
                /*
                $scope.projectFile.$save({id: $routeParams.id}).then(function(){
                    $location.path('/project/'+$routeParams.id+'/files');
                });
                */
            }
        };

    }]);