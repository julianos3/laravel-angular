angular.module('app.directives')
    .directive('projectFileDownload',['appConfig', 'ProjectFile', '$timeout', function(appConfig, ProjectFile, $timeout){
        return {
            restrict: 'E',
            templateUrl: appConfig.baseUrl + '/build/views/templates/projectFileDownload.html',
            link: function(scope, element, attr){
                var anchor = element.children()[0];
                scope.$on('salvar-arquivo', function(event, data){
                    $(anchor).removeClass('disabled');
                    $(anchor).text('Save File');
                    $(anchor).attr({
                        href: 'data:application-octet-stream;base64,'+data.file,
                        download: data.name
                    });
                    $timeout(function(){
                        scope.downloadFile=function(){};
                        $(anchor)[0].click();
                    });
                });
            },
            controller: ['$scope', '$element' ,'$attrs', function($scope, $element, $attrs, $timeout){
                $scope.downloadFile = function(){
                    var anchor = $element.children()[0];
                    $(anchor).addClass('disabled');
                    $(anchor).text('Loading...');
                    ProjectFile.download({id: $attrs.idProject, idFile: $attrs.idFile}, function(data){
                        $scope.$emit('salvar-arquivo',data);
                    });
                };
            }]
        };
    }]);