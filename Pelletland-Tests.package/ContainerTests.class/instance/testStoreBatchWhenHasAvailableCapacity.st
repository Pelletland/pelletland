tests
testStoreBatchWhenHasAvailableCapacity
	| container quality batch |
	container := Container new: 1000.
	quality := QualityType low.
	batch := Batch new: quality cost: 10 weigth: 100.
	self assert: (container store: batch) description: 'It should be able to store the first batch'.
	batch := Batch new: quality cost: 50 weigth: 900.
	self assert: (container store: batch) description: 'It should be able to store the second batch'