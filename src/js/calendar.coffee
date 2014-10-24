app = angular.module 'communitycal', ['LocalStorageModule','communitycal.services']

app.controller "CalCtrl", ($scope, steam) ->
  steam.get("techgrind.events/order-by-date").then (data) ->
    $scope.events = data['event-list']
    console.log(JSON.stringify($scope.events))

  $scope.date = (unix) ->
    date = new Date(unix*1000)
    date.toDateString()
