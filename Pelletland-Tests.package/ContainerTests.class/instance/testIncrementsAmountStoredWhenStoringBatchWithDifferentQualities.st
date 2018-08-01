tests
testIncrementsAmountStoredWhenStoringBatchWithDifferentQualities
	| container |
	container := Container new: 1000.
	self assert: container amountStored equals: 0.
	container store: (Batch new: QualityType low cost: 10 weigth: 100).
	container store: (Batch new: QualityType medium cost: 10 weigth: 700).
	container store: (Batch new: QualityType discard cost: 10 weigth: 50).
	self assert: container amountStored equals: 850