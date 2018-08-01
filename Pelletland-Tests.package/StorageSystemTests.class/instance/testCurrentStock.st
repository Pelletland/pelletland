tests
testCurrentStock
	sut addContainer: (Container new: 1000).
	sut addBatch: 10 weigth: 500 quality: QualityType high.
	sut addBatch: 10 weigth: 100 quality: QualityType medium.
	sut addBatch: 10 weigth: 200 quality: QualityType low.
	sut addBatch: 10 weigth: 40 quality: QualityType low.
	sut addBatch: 10 weigth: 50 quality: QualityType discard.
	self assert: sut currentStock size equals: 4.
	self assert: (sut currentStock sum) equals: 890