tests
testMultipleIncidentAffectsBatchQualityWithTwoTransitions
	| batch nextWeek |
	batch := Batch new: QualityType high cost: 10 weigth: 100.
	batch addQualityDeterioration: (QualityDeterioration new: 3 resultantQuality: QualityType medium).
	batch addQualityDeterioration: (QualityDeterioration new: 4 resultantQuality: QualityType low).
"	self assert: batch currentQuality equals: QualityType high."
	
	batch addIncident: (Incident new: 'something bad happened!' deteriorationWeeks: 2).
	batch addIncident: (Incident new: 'something is very wrong here!' deteriorationWeeks: 3).
	
	nextWeek := Date today addDays: 7.	
	self assert: (batch qualityAt: nextWeek) equals: QualityType medium