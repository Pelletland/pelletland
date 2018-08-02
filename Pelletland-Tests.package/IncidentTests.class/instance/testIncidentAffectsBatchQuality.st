tests
testIncidentAffectsBatchQuality
	| batch |
	batch := Batch new: QualityType high cost: 10 weigth: 100.
	batch addQualityDeterioration: (QualityDeterioration new: 2 resultantQuality: QualityType medium).
	self assert: batch currentQuality equals: QualityType high.
	
	batch addIncident: (Incident new: 'something very bad happened!' deteriorationWeeks: 2).
	self assert: batch currentQuality equals: QualityType medium.