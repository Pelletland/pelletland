tests
testCompareDifferentQualities
	self deny: QualityType high = QualityType low.
	self deny: QualityType medium = QualityType low.
	self deny: QualityType discard = QualityType low