tests
testGeneratesWithdrawRecord
	| container batch record |
	container := Container new: 1000.
	batch := Batch new: QualityType low cost: 10 weigth: 100.
	self assert: batch records isEmpty.
	container store: batch.
	container withdraw: 10.
	self assert: batch records size equals: 2.
	record := batch records second.
	self assert: record date equals: Date today.
	self assert: record description equals: 'Withdrawn 10kg'