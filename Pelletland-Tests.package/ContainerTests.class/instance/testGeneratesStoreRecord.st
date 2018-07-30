tests
testGeneratesStoreRecord
	| container batch record |
	container := Container new: 1000.
	batch := Batch new: QualityType low cost: 10 weigth: 100.
	self assert: batch record isEmpty.
	container store: batch.
	self assert: batch record size equals: 1.
	record := batch record first.
	self assert: record date equals: Date today.
	self assert: record description equals: 'Batch added with 100kg'