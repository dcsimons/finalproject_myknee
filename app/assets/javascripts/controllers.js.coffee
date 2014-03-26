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

myKneeControllers.controller("SurveyController", [ "$scope", "$routeParams", "Patient", "Survey", "Question", "Rating",
	($scope, $routeParams, Patient, Survey, Question, Rating) ->
		$scope.patients = Patient.query()
		$scope.patient = Patient.get id: $routeParams.patient_id
		
		$scope.surveys = Survey.query patient_id: $routeParams.patient_id
		$scope.survey = Survey.get patient_id: $routeParams.patient_id, id: $routeParams.id

		$scope.questions = Question.query patient_id: $routeParams.patient_id, survey_id: $routeParams.id

		$scope.question_checkbox = [
				value: 1
				clicked: false
				img_url: null
			,
				value: 2
				clicked: false
				img_url: null
			,
				value: 3
				clicked: false
				img_url: null
			,
				value: 4
				clicked: false
				img_url: null
			,
				value: 5
				clicked: false
				img_url: null
		]

		$scope.selectRating = (checkbox) ->
			checkbox.clicked = true
			checkbox.img_url = "app/assets/images/green_checkmark.png"
		
		# $scope.questions.$promise.then (result) ->
		# 	$scope.rating_value = []
		# 	angular.forEach result,  (question, index) ->
		# 		value = Rating.query patient_id: $routeParams.patient_id, survey_id: $routeParams.id, question_id: question.id
		# 		$scope.rating_value.push value
			

])

myKneeControllers.controller("PhysicianController", [ "$scope", "$routeParams", "Physician", "Patient",
	($scope, $routeParams, Physician, Patient) ->
		$scope.physician_id = $routeParams.id

		$scope.physicians = Physician.query()
		$scope.physician = Physician.get id: $routeParams.id

])