tests
testGetAvailableQualities
	| availableQualities |
	sut addContainer: (Container new: 1000).
	sut addBatch: 10 weigth: 150 quality: QualityType high.
	sut addBatch: 10 weigth: 45 quality: QualityType medium.
	sut addBatch: 10 weigth: 100 quality: QualityType medium.
	sut addBatch: 10 weigth: 200 quality: QualityType low.
	sut addBatch: 10 weigth: 40 quality: QualityType low.
	sut addBatch: 10 weigth: 40 quality: QualityType low.
	sut addBatch: 10 weigth: 50 quality: QualityType discard.
	self assert: (sut containers size) equals: 1.
	availableQualities := sut availableQualities.
	self assert: (availableQualities size) equals: 4.
	self assert: (availableQualities includes: 'Alta').
	self assert: (availableQualities includes: 'Media')