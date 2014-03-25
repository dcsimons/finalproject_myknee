myKneeRouter = angular.module( "myKneeRouter", [
	"ngRoute"
])

myKneeRouter.config([
	"$routeProvider",
	($routeProvider) ->
		$routeProvider
			.when "/",
				templateUrl: "/home"
				controller: "HomeController"
			.when "/patients",
				templateUrl: "/patients"
				controller: "PatientController"
			.when "/patients/:id",
				templateUrl: "/patients/2"
				controller: "PatientController"
			.when "/physicians",
				templateUrl: "/physicians"
				controller: "PhysicianController"
])