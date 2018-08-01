tests
testWithdrawWhenHavingDifferentQualityBatches
	| container |
	container := Container new: 1000.
	self assert: container amountStored equals: 0.
	container store: (Batch new: QualityType low cost: 10 weigth: 100).
	container store: (Batch new: QualityType high cost: 10 weigth: 50).
	self assert: container amountStored equals: 150.
	container withdraw: 50.
	self assert: container amountStored equals: 100