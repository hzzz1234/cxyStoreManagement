var app = angular
	.module(
	"productDefine",
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
	"productCtrl",
	function($scope, $http, $timeout) {
		$scope.name="hhhhh";
		$scope.query = function() {
			console.log($scope.name);
			$http.get(ctx + "/first/hellojson").success(function(response){
				console.log(response);
				$scope.name=response;
			}).error(function(error){
				console.log(error)
			});
			$scope.name="song bo qu si";
		}
	}
);