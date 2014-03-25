myKneeControllers = angular.module "myKneeControllers", []


myKneeControllers.controller("HomeController", 
	($scope) ->

		$scope.home_images = [
				title: "Patient Log In"
				img_url: ""
			,
				title: "Physician Log In"
				img_url: ""
		]

)

myKneeControllers.controller("PatientController", [ "$scope", "$routeParams", "Patient", "Survey", "Question", "Rating",
	($scope, $routeParams, Patient, Survey, Question, Rating) ->
		$scope.patients = Patient.query()
		$scope.patient = Patient.get
			id: $routeParams.id
		
		$scope.surveys = Survey.query
			patient_id: $routeParams.id


])

myKneeControllers.controller("PhysicianController", [ "$scope", "Physician"
	($scope, Physician) ->
		$scope.physicians = Physician.query()

])