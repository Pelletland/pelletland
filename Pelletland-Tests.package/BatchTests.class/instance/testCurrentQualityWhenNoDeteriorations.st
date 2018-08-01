tests
testCurrentQualityWhenNoDeteriorations
	| batch |
	batch := Batch new: QualityType high cost: 10 weigth: 100.
	self assert: batch currentQuality equals: QualityType high.
	self deny: batch currentQuality equals: QualityType medium.
	self deny: batch currentQuality equals: QualityType low.
	self deny: batch currentQuality equals: QualityType discard.