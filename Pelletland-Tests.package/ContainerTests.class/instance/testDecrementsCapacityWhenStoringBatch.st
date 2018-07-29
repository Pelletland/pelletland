tests
testDecrementsCapacityWhenStoringBatch
	| container quality batch |
	container := Container new: 1000.
	quality := QualityType low.
	batch := Batch new: quality cost: 10 weigth: 100.
	self assert: container availableCapacity equals: 1000.
	container store: batch.
	self assert: container availableCapacity equals: 900