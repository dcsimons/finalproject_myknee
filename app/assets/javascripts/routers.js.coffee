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
			.when "/patients/:patient_id/surveys/:id",
				templateUrl: "/single_patient_survey"
				controller: "SurveyController"
			.when "/patients/:patient_id/surveys/:id/take_survey",
				templateUrl: "/single_patient_take_survey"
				controller: "SurveyController"
			.when "/patients/:patient_id/surveys/:id/update_survey",
				templateUrl: "/single_patient_update_survey"
				controller: "SurveyController"
			.when "/physicians",
				templateUrl: "/physicians_index"
				controller: "PhysicianController"
			.when "/physicians/:id",
				templateUrl: "/single_physician"
				controller: "PhysicianController"
])