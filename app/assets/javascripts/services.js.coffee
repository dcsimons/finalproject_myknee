myKneeServices = angular.module("myKneeServices", ["ngResource"])

myKneeServices.factory("Patient", [ "$resource",
	($resource) ->
		return $resource "/patients/:id.json",
			id: "@id"
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