tests
testAddStorageRecord
	| batch record |
	batch := Batch new: QualityType low cost: 10 weigth: 100.
	record := batch addStorageRecord: Date today amount: 10.
	self assert: record description equals: 'Stored 10kg'