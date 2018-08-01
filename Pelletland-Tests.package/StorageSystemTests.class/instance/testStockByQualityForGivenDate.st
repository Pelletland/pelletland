tests
testStockByQualityForGivenDate
	| batch nextWeek stock |
	sut addContainer: (Container new: 1000).
	batch := sut addBatch: 10 weigth: 500 quality: QualityType high.
	batch addQualityDeterioration: (QualityDeterioration new: 1 resultantQuality: QualityType medium).	
	sut addBatch: 10 weigth: 100 quality: QualityType medium.
	
	nextWeek := Date today addDays: 7.
	stock := sut stockByQualityAt: nextWeek.
	self assert: (stock sum) equals: 600.
	self assert: (stock at: QualityType high) equals: 0.
	self assert: (stock at: QualityType medium) equals: 600.