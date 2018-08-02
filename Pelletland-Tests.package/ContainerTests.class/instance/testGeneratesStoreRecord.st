tests
testGeneratesStoreRecord
	| container record |
	container := Container new: 1000.
	self assert: container records isEmpty.
	container store: (Batch new: QualityType low cost: 10 weigth: 100).
	self assert: container records size equals: 1.
	record := container records first.
	self assert: record date equals: Date today.
	self assert: record description equals: 'Stored 100kg'