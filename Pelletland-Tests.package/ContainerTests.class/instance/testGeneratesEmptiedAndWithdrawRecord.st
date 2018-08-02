tests
testGeneratesEmptiedAndWithdrawRecord
	| container batch record |
	container := Container new: 1000.
	batch := Batch new: QualityType low cost: 10 weigth: 100.
	self assert: batch records isEmpty.
	container store: batch.
	container withdraw: 10.
	container withdraw: 90.
	self assert: batch records size equals: 3.
	
	record := batch records second.
	self assert: record date equals: Date today.
	self assert: record description equals: 'Withdrawn 10kg'.
	
	record := batch records third.
	self assert: record date equals: Date today.
	self assert: record description equals: 'Withdrawn 90kg'