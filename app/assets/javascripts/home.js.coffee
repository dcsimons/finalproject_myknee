myKnee = angular.module("myKnee", [
  "ngRoute",
  "myKneeRouter",
  "HomeController",
  "PatientController",
  "PhysicianController"
])

myKnee.config ["$httpProvider",
  ($httpProvider) ->
    $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
]
