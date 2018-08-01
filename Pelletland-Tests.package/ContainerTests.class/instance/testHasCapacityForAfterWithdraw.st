tests
testHasCapacityForAfterWithdraw
	| container |
	container := Container new: 100.
	container store: (Batch new: QualityType low cost: 10 weigth: 80).
	self deny: (container hasCapacityFor: 50) description: 'It shouldnt have capacity for the batch'.
	container withdraw: 50.
	self assert: (container hasCapacityFor: 50) description: 'It should have capacity for the batch'.