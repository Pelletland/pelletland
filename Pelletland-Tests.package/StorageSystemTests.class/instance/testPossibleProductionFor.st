tests
testPossibleProductionFor
	sut addContainer: (Container new: 1000).
	sut addBatch: 10 weigth: 1000 quality: QualityType high.
	self assert: (sut possibleProductionFor: premiumProduct at: Date today) equals: 1000