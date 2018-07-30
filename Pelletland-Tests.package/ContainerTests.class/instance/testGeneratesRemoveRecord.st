tests
testGeneratesRemoveRecord
	| container batch record |
	container := Container new: 1000.
	batch := Batch new: QualityType low cost: 10 weigth: 100.
	self assert: batch record isEmpty.
	container store: batch.
	container removeFromContainer: 10.
	self assert: batch record size equals: 2.
	record := batch record second.
	self assert: record date equals: Date today.
	self assert: record description equals: 'Removed 10kg from batch'