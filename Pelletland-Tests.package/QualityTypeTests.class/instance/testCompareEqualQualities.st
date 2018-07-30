tests
testCompareEqualQualities
	self assert: QualityType high equals: QualityType high.
	self assert: QualityType medium equals: QualityType medium.
	self assert: QualityType low equals: QualityType low.
	self assert: QualityType discard equals: QualityType discard