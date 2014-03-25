myKnee.controller("PhysicianController", ($scope) ->

	$scope.physicians = Physician.query()

)