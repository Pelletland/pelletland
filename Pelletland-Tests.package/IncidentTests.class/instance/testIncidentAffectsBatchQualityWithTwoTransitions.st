tests
testIncidentAffectsBatchQualityWithTwoTransitions
	| batch |
	batch := Batch new: QualityType high cost: 10 weigth: 100.
	batch addQualityDeterioration: (QualityDeterioration new: 1 resultantQuality: QualityType medium).
	batch addQualityDeterioration: (QualityDeterioration new: 1 resultantQuality: QualityType low).	
	self assert: batch currentQuality equals: QualityType high.
	
	batch addIncident: (Incident new: 'something very bad happened!' deteriorationWeeks: 2).
	self assert: batch currentQuality equals: QualityType low.