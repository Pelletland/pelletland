tests
testGeneratesStoreRecord
	| container batch record |
	container := Container new: 1000.
	batch := Batch new: QualityType low cost: 10 weigth: 100.
	self assert: batch records isEmpty.
	container store: batch.
	self assert: batch records size equals: 1.
	record := batch records first.
	self assert: record date equals: Date today.
	self assert: record description equals: 'Stored 100kg'