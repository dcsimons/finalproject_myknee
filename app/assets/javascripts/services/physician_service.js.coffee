PhysicianService = angular.module("PhysicianService", [$ngResource])

PhysicianService.factory("Physician", [ "$resource",
	($resource) ->
		return $resource "/physicians/:id.json",
			id: "@id"
			update:
				method: "PATCH"
])