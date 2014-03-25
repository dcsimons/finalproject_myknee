PatientService = angular.module("PatientService", [$ngResource])

PatientService.factory("Patient", [ "$resource",
	($resource) ->
		return $resource "/patients/:id.json",
			id: "@id"
			update:
				method: "PATCH"
])