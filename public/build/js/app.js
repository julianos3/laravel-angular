var app = angular.module('app', [
    'ngRoute', 'angular-oauth2', 'app.controllers', 'app.services', 'app.filters', 'app.directives',
    'ui.bootstrap.typeahead', 'ui.bootstrap.datepicker', 'ui.bootstrap.tpls', 'ui.bootstrap.modal',
    'ngFileUpload', 'http-auth-interceptor', 'angularUtils.directives.dirPagination',
    'mgcrea.ngStrap.navbar', 'ui.bootstrap.dropdown'
]);

angular.module('app.controllers', ['ngMessages', 'angular-oauth2']);
angular.module('app.filters', []);
angular.module('app.directives', []);
angular.module('app.services', ['ngResource']);

app.provider('appConfig', ['$httpParamSerializerProvider', function ($httpParamSerializerProvider) {
    var config = {
        baseUrl: 'http://localhost:8000',
        project: {
            status: [
                {value: 1, label: 'Não Iniciado'},
                {value: 2, label: 'Iniciado'},
                {value: 3, label: 'Concluído'}
            ]
        },
        projectTask: {
            status: [
                {value: 1, label: 'Incompleta'},
                {value: 2, label: 'Completa'}
            ]
        },
        urls: {
            projectFile: '/project/{{id}}/file/{{idFile}}'
        },
        utils: {
            transformRequest: function (data) {
                if (angular.isObject(data)) {
                    return $httpParamSerializerProvider.$get()(data);
                }
                return data;
            },
            transformResponse: function (data, headers) {
                var headersGetter = headers();
                if (headersGetter['content-type'] == 'application/json' || headersGetter['content-type'] == 'text/json') {
                    var dataJson = JSON.parse(data);
                    if (dataJson.hasOwnProperty('data') && Object.keys(dataJson).length == 1) {
                        dataJson = dataJson.data;
                    }
                    return dataJson;
                }
                return data;
            }
        }
    };

    return {
        config: config,
        $get: function () {
            return config;
        }
    }
}]);

app.config([
    '$routeProvider', '$httpProvider', 'OAuthProvider', 'OAuthTokenProvider', 'appConfigProvider',

    function ($routeProvider, $httpProvider, OAuthProvider, OAuthTokenProvider, appConfigProvider) {
        $httpProvider.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded;charset=utf-8';
        $httpProvider.defaults.headers.put['Content-Type'] = 'application/x-www-form-urlencoded;charset=utf-8';
        $httpProvider.defaults.transformRequest = appConfigProvider.config.utils.transformRequest;
        $httpProvider.defaults.transformResponse = appConfigProvider.config.utils.transformResponse;

        $httpProvider.interceptors.splice(0, 1);
        $httpProvider.interceptors.splice(0, 1);
        $httpProvider.interceptors.push('oauthFixInterceptor');

        $routeProvider
            .when('/login', {
                templateUrl: 'build/views/login.html',
                controller: 'LoginController'
            })
            .when('/logout', {
                resolve: {
                    logout: ['$location', 'OAuthToken', function ($location, OAuthToken) {
                        OAuthToken.removeToken();
                        return $location.path('/login');
                    }]
                }
            })
            .when('/home', {
                templateUrl: 'build/views/home.html',
                controller: 'HomeController',
                title: 'Home'
            })
            .when('/clients/dashboard', {
                templateUrl: 'build/views/clients/dashboard.html',
                controller: 'ClientDashBoardController',
                title: 'Clientes'
            })
            .when('/clients', {
                templateUrl: 'build/views/clients/list.html',
                controller: 'ClientListController',
                title: 'Clientes'
            })
            .when('/clients/new', {
                templateUrl: 'build/views/clients/new.html',
                controller: 'ClientNewController',
                title: 'Clientes'
            })
            .when('/clients/:id/edit', {
                templateUrl: 'build/views/clients/edit.html',
                controller: 'ClientEditController',
                title: 'Clientes'
            })
            .when('/clients/:id/remove', {
                templateUrl: 'build/views/clients/remove.html',
                controller: 'ClientRemoveController',
                title: 'Clientes'
            })
            .when('/projects', {
                templateUrl: 'build/views/project/list.html',
                controller: 'ProjectListController',
                title: 'Projetos'
            })
            .when('/projects/dashboard', {
                templateUrl: 'build/views/project/dashboard.html',
                controller: 'ProjectDashBoardController',
                title: 'Projetos'
            })
            .when('/projects/new', {
                templateUrl: 'build/views/project/new.html',
                controller: 'ProjectNewController',
                title: 'Projetos'
            })
            .when('/projects/:id/edit', {
                templateUrl: 'build/views/project/edit.html',
                controller: 'ProjectEditController',
                title: 'Projetos'
            })
            .when('/projects/:id/remove', {
                templateUrl: 'build/views/project/remove.html',
                controller: 'ProjectRemoveController',
                title: 'Projetos'
            })
            .when('/project/:id/notes', {
                templateUrl: 'build/views/project-note/list.html',
                controller: 'ProjectNoteListController'
            })
            .when('/project/:id/notes/:idNote/show', {
                templateUrl: 'build/views/project-note/show.html',
                controller: 'ProjectNoteShowListController'
            })
            .when('/project/:id/notes/new', {
                templateUrl: 'build/views/project-note/new.html',
                controller: 'ProjectNoteNewController'
            })
            .when('/project/:id/notes/:idNote/edit', {
                templateUrl: 'build/views/project-note/edit.html',
                controller: 'ProjectNoteEditController'
            })
            .when('/project/:id/notes/:idNote/remove', {
                templateUrl: 'build/views/project-note/remove.html',
                controller: 'ProjectNoteRemoveController'
            })
            .when('/project/:id/files', {
                templateUrl: 'build/views/project-file/list.html',
                controller: 'ProjectFileListController'
            })
            .when('/project/:id/files/new', {
                templateUrl: 'build/views/project-file/new.html',
                controller: 'ProjectFileNewController'
            })
            .when('/project/:id/files/:idFile/edit', {
                templateUrl: 'build/views/project-file/edit.html',
                controller: 'ProjectFileEditController'
            })
            .when('/project/:id/files/:idFile/remove', {
                templateUrl: 'build/views/project-file/remove.html',
                controller: 'ProjectFileRemoveController'
            })
            .when('/project/:id/tasks', {
                templateUrl: 'build/views/project-task/list.html',
                controller: 'ProjectTaskListController'
            })
            .when('/project/:id/task/new', {
                templateUrl: 'build/views/project-task/new.html',
                controller: 'ProjectTaskNewController'
            })
            .when('/project/:id/task/:taskId/edit', {
                templateUrl: 'build/views/project-task/edit.html',
                controller: 'ProjectTaskEditController'
            })
            .when('/project/:id/task/:taskId/remove', {
                templateUrl: 'build/views/project-task/remove.html',
                controller: 'ProjectTaskRemoveController'
            })
            .when('/project/:id/members', {
                templateUrl: 'build/views/project-member/list.html',
                controller: 'ProjectMemberListController'
            })
            .when('/project/:id/member/:idProjectMember/remove', {
                templateUrl: 'build/views/project-member/remove.html',
                controller: 'ProjectMemberRemoveController'
            });

        OAuthProvider.configure({
            baseUrl: appConfigProvider.config.baseUrl,
            clientId: 'appid1',
            clientSecret: 'secret', // optional
            grantPath: 'oauth/access_token',
        });

        OAuthTokenProvider.configure({
            name: 'token',
            options: {
                secure: false
            }
        });

    }]);

app.run(['$rootScope', '$location', '$http', '$modal', 'httpBuffer', 'OAuth',
    function ($rootScope, $location, $http, $modal, httpBuffer, OAuth) {
        //se usuario nao estiver logado vai direteciona-lo
        $rootScope.$on('$routeChangeStart', function (event, next, current) {
            if (next.$$route.originalPath != '/login') {
                if (!OAuth.isAuthenticated()) {
                    return $location.path('login');
                }
            }
        });

        $rootScope.$on('$routeChangeSuccess', function (event, current, previous) {
            $rootScope.pageTitle = current.$$route.title;
        });

        $rootScope.$on('oauth:error', function (event, data) {
            // Ignore `invalid_grant` error - should be catched on `LoginController`.
            if ('invalid_grant' === data.rejection.data.error) {
                return;
            }

            // Refresh token when a `invalid_token` error occurs.
            if ('access_denied' === data.rejection.data.error) {
                httpBuffer.append(data.rejection.config, data.deferred);
                if (!$rootScope.loginModalOpened) {
                    var modalInstance = $modal.open({
                        templateUrl: 'build/views/templates/loginModal.html',
                        controller: 'LoginModalController'
                    });
                    $rootScope.loginModalOpened = true;
                }
                return;
            }

            // Redirect to `/login` with the `error_reason`.
            return $location.path('login');
        });
    }]);