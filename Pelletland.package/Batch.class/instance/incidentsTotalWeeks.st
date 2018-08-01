accessing
incidentsTotalWeeks
	^ self incidents inject: 0 into: [ :amount :incident | amount + incident deteriorationWeeks ]