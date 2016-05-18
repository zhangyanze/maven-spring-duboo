
angular.module('newApp', ['ionic'])


    .config(function($stateProvider, $urlRouterProvider,$ionicConfigProvider) {
        $ionicConfigProvider.platform.ios.tabs.style('standard');
        $ionicConfigProvider.platform.ios.tabs.position('bottom');
        $ionicConfigProvider.platform.android.tabs.style('standard');
        $ionicConfigProvider.platform.android.tabs.position('standard');

        $ionicConfigProvider.platform.ios.navBar.alignTitle('center');
        $ionicConfigProvider.platform.android.navBar.alignTitle('left');

        $ionicConfigProvider.platform.ios.backButton.previousTitleText('').icon('ion-ios-arrow-thin-left');
        $ionicConfigProvider.platform.android.backButton.previousTitleText('').icon('ion-android-arrow-back');

        $ionicConfigProvider.platform.ios.views.transition('ios');
        $ionicConfigProvider.platform.android.views.transition('android');

        $stateProvider
            .state('tab', {
                url: '/tab',
                abstract: true,
                templateUrl: 'templates/tabs.html'
            })

            // Each tab has its own nav history stack:

            .state('tab.new', {
                url: '/new',
                views: {
                    'tab-new': {
                        templateUrl: 'templates/new/tab-new.html'
                    }
                }
            })

            .state('tab.hot', {
                url: '/hot',
                views: {
                    'tab-hot': {
                        templateUrl: 'templates/tab-hot.html'
                    }
                }
            })
            .state('tab.user', {
                url: '/user',
                views: {
                    'tab-user': {
                        templateUrl: 'templates/tab-user.html'
                    }
                }
            })

            .state('tab.audio', {
                url: '/audio',
                views: {
                    'tab-audio': {
                        templateUrl: 'templates/tab-audio.html'
                    }
                }
            })
            .state('tab.chat-detail', {
                url: '/chats/:chatId',
                views: {
                    'tab-chats': {
                        templateUrl: 'templates/chat-detail.html'
                    }
                }
            });

        $urlRouterProvider.otherwise('/tab/new');

    });
