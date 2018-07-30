querying
findContainerWithCapacityFor: aWeigth ifFound: foundBlock ifNone: notFoundBlock
	^ containers detect: [ :container | container hasCapacityFor: aWeigth ] ifFound: foundBlock ifNone: notFoundBlock