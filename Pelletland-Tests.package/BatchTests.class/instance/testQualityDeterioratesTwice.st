tests
testQualityDeterioratesTwice
	| batch nextWeek |
	batch := Batch new: QualityType high cost: 10 weigth: 100.
	self assert: batch currentQuality equals: QualityType high.
	
	batch addQualityDeterioration: (QualityDeterioration new: 1 resultantQuality: QualityType medium).
	batch addQualityDeterioration: (QualityDeterioration new: 2 resultantQuality: QualityType low).
	
	nextWeek := Date today addDays: 7.
	self assert: (batch qualityAt: nextWeek) equals: QualityType medium.
	
	nextWeek := Date today addDays: 14.
	self assert: (batch qualityAt: nextWeek) equals: QualityType low