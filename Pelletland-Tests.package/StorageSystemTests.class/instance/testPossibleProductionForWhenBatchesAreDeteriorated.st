tests
testPossibleProductionForWhenBatchesAreDeteriorated
	| batch nextWeek |
	sut addContainer: (Container new: 1000).
	batch := sut addBatch: 10 weigth: 100 quality: QualityType high.
	batch addQualityDeterioration: (QualityDeterioration new: 1 resultantQuality: QualityType medium).
	nextWeek := Date today addDays: 7.
	self assert: (sut possibleProductionFor: premiumProduct at: nextWeek) equals: 0