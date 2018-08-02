tests
testGeneratesEmptiedAndWithdrawRecord
	| container record |
	container := Container new: 1000.
	self assert: container records isEmpty.
	container store: (Batch new: QualityType low cost: 10 weigth: 100).
	container withdraw: 10.
	container withdraw: 90.
	self assert: container records size equals: 3.
	
	record := container records second.
	self assert: record date equals: Date today.
	self assert: record description equals: 'Withdrawn 10kg'.
	
	record := container records third.
	self assert: record date equals: Date today.
	self assert: record description equals: 'Withdrawn 90kg'