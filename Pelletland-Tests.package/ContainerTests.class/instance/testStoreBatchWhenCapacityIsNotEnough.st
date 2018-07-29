tests
testStoreBatchWhenCapacityIsNotEnough
	| container quality batch |
	container := Container new: 1000.
	quality := QualityType low.
	batch := Batch new: quality cost: 10 weigth: 2000.
	self deny: (container store: batch)