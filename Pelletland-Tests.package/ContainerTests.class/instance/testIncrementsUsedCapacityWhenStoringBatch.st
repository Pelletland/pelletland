tests
testIncrementsUsedCapacityWhenStoringBatch
	| container batch |
	container := Container new: 1000.
	batch := Batch new: QualityType low cost: 10 weigth: 100.
	self assert: container usedCapacity equals: 0.
	container store: batch.
	self assert: container usedCapacity equals: 100