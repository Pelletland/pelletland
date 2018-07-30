tests
testStoredBatchHasContainerAssigned
	| container quality batch |
	container := Container new: 1000.
	quality := QualityType low.
	batch := Batch new: quality cost: 10 weigth: 100.
	container store: batch.
	self assert: batch container equals: container.	