myKnee = angular.module("myKnee", [
  "ngRoute",
  "myKneeRouter",
  "myKneeControllers",
  "myKneeServices"
])

myKnee.config ["$httpProvider",
  ($httpProvider) ->
    $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
]
