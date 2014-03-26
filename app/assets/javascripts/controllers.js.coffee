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
		$scope.patient_id = $routeParams.id

		$scope.patients = Patient.query()
		$scope.patient = Patient.get id: $routeParams.id
		
		$scope.surveys = Survey.query patient_id: $routeParams.id
		console.log $scope.surveys

		# $scope.surveys.$promise.then (result) ->
		# 	$scope.qandr_a = []
		# 	angular.forEach result,  (survey, index) ->
		# 		qandr = 
		# 			q: Question.query patient_id: $routeParams.id, survey_id: survey.id
		# 			r: Rating.query patient_id: $routeParams.id, survey_id: survey.id, question_id: 1
				
		# 		$scope.qandr_a.push qandr

])

myKneeControllers.controller("SurveyController", [ "$scope", "$routeParams", "Patient", "Survey", "Question", "Rating",
	($scope, $routeParams, Patient, Survey, Question, Rating) ->
		$scope.patients = Patient.query()
		$scope.patient = Patient.get id: $routeParams.patient_id
		
		$scope.surveys = Survey.query patient_id: $routeParams.patient_id
		$scope.survey = Survey.get patient_id: $routeParams.patient_id, id: $routeParams.id

		$scope.questions = Question.query patient_id: $routeParams.patient_id, survey_id: $routeParams.id

		$scope.questions.$promise.then (result) ->
			$scope.rating_value = []
			angular.forEach result,  (question, index) ->
				value = Rating.query patient_id: $routeParams.patient_id, survey_id: $routeParams.id, question_id: question.id
				$scope.rating_value.push value
			

])

myKneeControllers.controller("PhysicianController", [ "$scope", "Physician"
	($scope, Physician) ->
		$scope.physicians = Physician.query()

])