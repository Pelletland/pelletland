tests
testWithdrawWhenHavingDifferentQualityBatches
	| container |
	container := Container new: 1000.
	self assert: container amountStored equals: 0.
	container store: (Batch new: QualityType low cost: 10 weigth: 100).
	container store: (Batch new: QualityType medium cost: 10 weigth: 100).
	self assert: container amountStored equals: 200.
	
	self assert: (container qualityTypes size) equals: 2. 
	self assert: ((((container qualityTypes) asOrderedCollection) first) name) equals: 'Baja'.
	self assert: ((((container qualityTypes) asOrderedCollection) second) name) equals: 'Media'.	
	
	container withdraw: 50.
	self assert: container amountStored equals: 150