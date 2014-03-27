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

myKneeControllers.controller("PatientController", [ "$scope", "$routeParams", "Patient", "Survey",
	($scope, $routeParams, Patient, Survey, Question, Rating) ->
		$scope.patient_id = $routeParams.id

		$scope.patients = Patient.query()
		$scope.patient = Patient.get id: $routeParams.id
		
		$scope.surveys = Survey.query patient_id: $routeParams.id

		$scope.surveys.$promise.then (result) ->
			$scope.survey_status = []
			angular.forEach result, (survey, index) ->
				if survey.status is "COMPLETED"
					value = 
						update: true
						take: false
				else
					value = 
						update: false
						take: true
				$scope.survey_status.push value

])

myKneeControllers.controller("SurveyController", [ "$scope", "$routeParams", "Patient", "Survey",
	($scope, $routeParams, Patient, Survey, Question, Rating) ->
		$scope.patients = Patient.query()
		$scope.patient = Patient.get id: $routeParams.patient_id
		
		$scope.surveys = Survey.query patient_id: $routeParams.patient_id
		$scope.survey = Survey.get patient_id: $routeParams.patient_id, id: $routeParams.id

		$scope.survey.$promise.then (result) ->
			if result.status is "COMPLETED"
				value = 
					update: true
					take: false
			else
				value = 
					update: false
					take: true
			$scope.survey_status = value

		$scope.questions =
			first: "What is the level of pain in your knee?"
			second: "What is the level of difficulty to walk?"
			third: "What is the level of difficulty to walk up and down stairs?"
			fourth: "What is the level of endurance when you walk?"
			fifth: "What is the level of difficulty to walk without a crutch or cane?"
			sixth: "What is the level of endurance when you walk without a crutch or cane?"

		$scope.updateSurvey = ->
			$scope.survey.status = "COMPLETED"
			Survey.update
					id: $scope.survey.id
				,
					$scope.survey

])

myKneeControllers.controller("PhysicianController", [ "$scope", "$routeParams", "Physician", "Patient",
	($scope, $routeParams, Physician, Patient) ->
		$scope.physician_id = $routeParams.id

		$scope.physicians = Physician.query()
		$scope.physician = Physician.get id: $routeParams.id,
			(data) ->
				$scope.physician_patients = data.patients

		$scope.createNewPatient = ->
			Patient.save $scope.patient,
				(data) ->
					console.log data

])