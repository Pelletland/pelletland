tests
testDecrementsAvailableCapacityWhenStoringBatch
	| container |
	container := Container new: 1000.
	self assert: container availableCapacity equals: 1000.
	container store: (Batch new: QualityType low cost: 10 weigth: 100).
	self assert: container availableCapacity equals: 900