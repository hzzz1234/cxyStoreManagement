/**
 * Created by Administrator on 2016/1/5.
 */
var app = angular
    .module(
    "userGroupAdmin",
    [],
    function($httpProvider) {
        // Use x-www-form-urlencoded Content-Type
        $httpProvider.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded;charset=utf-8';

        /**
         * The workhorse; converts an object to
         * x-www-form-urlencoded serialization.
         *
         * @param {Object}
         *            obj
         * @return {String}
         */
        var param = function(obj) {
            var query = '', name, value, fullSubName, subName, subValue, innerObj, i;

            for (name in obj) {
                value = obj[name];

                if (value instanceof Array) {
                    for (i = 0; i < value.length; ++i) {
                        subValue = value[i];
                        fullSubName = name + '[' + i + ']';
                        innerObj = {};
                        innerObj[fullSubName] = subValue;
                        query += param(innerObj) + '&';
                    }
                } else if (value instanceof Object) {
                    for (subName in value) {
                        subValue = value[subName];
                        fullSubName = name + '[' + subName + ']';
                        innerObj = {};
                        innerObj[fullSubName] = subValue;
                        query += param(innerObj) + '&';
                    }
                } else if (value !== undefined && value !== null)
                    query += encodeURIComponent(name) + '='
                        + encodeURIComponent(value) + '&';
            }

            return query.length ? query.substr(0, query.length - 1)
                : query;
        };

        // Override $http service's default transformRequest
        $httpProvider.defaults.transformRequest = [ function(data) {
            return angular.isObject(data)
            && String(data) !== '[object File]' ? param(data)
                : data;
        } ];
    });

app	.controller(
    "userGroupAdminCtrl",
    function($scope, $http, $timeout) {

        $scope.randPassword = function()
        {
            var text=['abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ','1234567890','~!@#$%^&*()_+";",./?<>'];
            var rand = function(min, max){return Math.floor(Math.max(min, Math.random() * (max+1)));}
            var len = rand(8, 16); // 长度为8-16
            var pw = '';
            for(i=0; i<len; ++i)
            {
                var strpos = rand(0, 3);
                pw += text[strpos].charAt(rand(0, text[strpos].length));
            }
            $scope.user.password=pw;
        }
    }
);
