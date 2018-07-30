tests
testHasCapacityFor
	| container quality |
	container := Container new: 100.
	quality := QualityType low.
	self assert: (container hasCapacityFor: 100) description: 'It should have capacity for the small batch'.
	self deny: (container hasCapacityFor: 900) description: 'It shouldnt have capacity for the big batch'.