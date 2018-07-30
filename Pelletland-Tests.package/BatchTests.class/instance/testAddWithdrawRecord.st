tests
testAddWithdrawRecord
	| batch record |
	batch := Batch new: QualityType low cost: 10 weigth: 100.
	record := batch addWithdrawRecord: Date today amount: 10.
	self assert: record description equals: 'Withdrawn 10kg'