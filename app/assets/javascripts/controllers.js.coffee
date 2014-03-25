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

myKneeControllers.controller("PatientController", [ "$scope", "Patient"
	($scope, Patient) ->
		$scope.patients = Patient.query()

])

myKneeControllers.controller("PhysicianController", [ "$scope", "Physician"
	($scope, Physician) ->
		$scope.physicians = Physician.query()

])