tests
testMultipleIncidentAffectsBatchQualityWithTwoTransitions
	| batch nextWeek |
	batch := Batch new: QualityType high cost: 10 weigth: 100.
	batch addQualityDeterioration: (QualityDeterioration new: 1 resultantQuality: QualityType medium).
	batch addQualityDeterioration: (QualityDeterioration new: 2 resultantQuality: QualityType low).
	self assert: batch currentQuality equals: QualityType high.
	
	batch addIncident: (Incident new: 'something bad happened!' deteriorationWeeks: 1).
	batch addIncident: (Incident new: 'something is very wrong here!' deteriorationWeeks: 1).
	
	nextWeek := Date today addDays: 7.	
	self assert: (batch qualityAt: nextWeek) equals: QualityType low