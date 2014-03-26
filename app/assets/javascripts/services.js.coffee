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

myKneeServices.factory("Physician", [ "$resource",
	($resource) ->
		return $resource "/physicians/:id.json",
			id: "@id"
			update:
				method: "PATCH"
])