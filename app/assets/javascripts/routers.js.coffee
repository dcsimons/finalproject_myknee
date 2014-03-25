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
				templateUrl: "/patients_index"
				controller: "PatientController"
			.when "/patients/:id",
				templateUrl: "/single_patient"
				controller: "PatientController"
			.when "/physicians",
				templateUrl: "/physicians_index"
				controller: "PhysicianController"
])