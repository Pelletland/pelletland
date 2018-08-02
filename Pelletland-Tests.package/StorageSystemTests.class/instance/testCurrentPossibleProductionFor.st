tests
testCurrentPossibleProductionFor
	sut addContainer: 1000.
	sut addBatch: 10 weigth: 1000 quality: QualityType high.
	self assert: (sut currentPossibleProductionFor: premiumProduct) equals: 1000