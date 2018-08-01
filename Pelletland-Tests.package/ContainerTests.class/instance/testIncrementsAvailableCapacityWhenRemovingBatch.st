tests
testIncrementsAvailableCapacityWhenRemovingBatch
	| container batch |
	container := Container new: 1000.
	batch := Batch new: QualityType low cost: 10 weigth: 100.
	self assert: container amountStored equals: 0.
	container store: batch.
	self assert: container amountStored equals: 100.
	container withdraw: 50.
	self assert: container amountStored equals: 50.