tests
testWithdrawFromSingleBatch
	| container |
	container := Container new: 1000.
	self assert: container amountStored equals: 0.
	container store: (Batch new: QualityType low cost: 10 weigth: 100).
	self assert: container amountStored equals: 100.
	container withdraw: 50.
	self assert: container amountStored equals: 50