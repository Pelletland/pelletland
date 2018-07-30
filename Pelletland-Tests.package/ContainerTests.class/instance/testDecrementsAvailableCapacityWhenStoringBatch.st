tests
testDecrementsAvailableCapacityWhenStoringBatch
	| container batch |
	container := Container new: 1000.
	batch := Batch new: QualityType low cost: 10 weigth: 100.
	self assert: container availableCapacity equals: 1000.
	container store: batch.
	self assert: container availableCapacity equals: 900