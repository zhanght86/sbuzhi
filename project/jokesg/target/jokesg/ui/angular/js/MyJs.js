// function HelloAngular($scope){
	// $scope.greeting = {
		// text:'Hello'
	// };
// };

var myModule = angular.module("Main",[]);

myModule.controller("HelloAngular",['$scope',
	function HelloAngular($scope){
		$scope.greeting = {
			text1:'hello',
			text2:'你好'
		}
	}
]);

myModule.directive("hello",function(){
	return {
		restrict:'E',
		template:'<div>AngularJs指令系统第一种写法!</div>',
		replace:true
	}
});

myModule.directive("hello2",function(){
	return {
		restrict:'E',
		template:'<p>AngularJs,指令系统第二种写法!</p>',
		replace:true
	}
});