myKnee.controller("PatientController", ($scope) ->

	$scope.patients = Patient.query()

)