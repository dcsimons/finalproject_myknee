myKneeServices = angular.module("myKneeServices", ["ngResource"])

myKneeServices.factory("Patient", [ "$resource",
	($resource) ->
		return $resource "/patients/:id.json",
			id: "@id"
			update:
				method: "PATCH"
])

myKneeServices.factory("Survey", [ "$resource",
	($resource) ->
		return $resource "/patients/:patient_id/surveys/:id.json",
			patient_id: "@patient_id"
			id: "@id"
		,
			update:
				method: "PATCH"
])

myKneeServices.factory("Question", [ "$resource",
	($resource) ->
		return $resource "/patients/:patient_id/surveys/:survey_id/questions/:id.json",
			patient_id: "@patient_id"
			survey_id: "@survey_id"
			id: "@id"
		,
			update:
				method: "PATCH"
])

myKneeServices.factory("Rating", [ "$resource",
	($resource) ->
		return $resource "/patients/:patient_id/surveys/:survey_id/questions/:question_id/ratings/:id.json",
			patient_id: "@patient_id"
			survey_id: "@survey_id"
			question_id: "@question_id"
			id: "@id"
		,
			update:
				method: "PATCH"
])

myKneeServices.factory("Physician", [ "$resource",
	($resource) ->
		return $resource "/physicians/:id.json",
			id: "@id"
			update:
				method: "PATCH"
])