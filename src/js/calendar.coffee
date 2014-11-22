app = angular.module 'communitycal', ['LocalStorageModule','communitycal.services']

app.directive "communityCalendar", (steam) ->
	restrict: "E"
	template: """
						<ul>
							<li class="cc-event" ng-repeat="event in events">
								<a href="#/communitycal/{{event.id}}">
									<div class="cc-event-title">{{ event.title }}</div>
									<div class="cc-event-date">{{ date(event.date) }}</div>
									<div class="cc-event-location">{{ event.address }}</div>
								</a>
							</li>
						</ul>
						"""
	link: (scope, element, attrs) ->
		console.log("(cal-widget:link)")
		steam.get("techgrind.events/order-by-date").then (data) ->
			scope.events = data['event-list']
			console.log(JSON.stringify(scope.events))

		scope.date = (unix) ->
			date = new Date(unix*1000)
			date.toDateString()
