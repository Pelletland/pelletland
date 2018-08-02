tests
testWithdrawFromOneWhenHavingManyBatches
	| container |
	container := Container new: 1000.
	self assert: container amountStored equals: 0.
	container store: (Batch new: QualityType low cost: 10 weigth: 100).
	container store: (Batch new: QualityType low cost: 20 weigth: 100).
	container store: (Batch new: QualityType low cost: 30 weigth: 50).
	container store: (Batch new: QualityType low cost: 40 weigth: 50).
	self assert: container amountStored equals: 300.
	container withdraw: 50.
	self assert: container amountStored equals: 250.
	container withdraw: 100.
	self assert: container amountStored equals: 150 