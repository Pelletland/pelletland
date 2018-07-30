tests
testAddEmptiedRecord
	| batch record |
	batch := Batch new: QualityType low cost: 10 weigth: 100.
	record := batch addEmptiedRecord: Date today amount: 10.
	self assert: record description equals: 'Emptied'