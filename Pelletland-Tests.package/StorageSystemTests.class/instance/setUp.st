running
setUp
	| premiumQualities |
	super setUp.
	sut := StorageSystem new.
	premiumQualities := OrderedCollection new.
	premiumQualities add: (QualityRule new: QualityType high min: 90 max: 100).
	premiumQualities add: (QualityRule new: QualityType medium min: 0 max: 10).
	premiumQualities add: (QualityRule new: QualityType low min: 0 max: 1).
	premiumQualities add: (QualityRule new: QualityType discard min: 0 max: 1).
	premiumProduct := Product new: 'Linea Premium' qualities: premiumQualities