tests
testCurrentStock
	| stock totalAmount |
	sut addContainer: (Container new: 1000).
	sut addBatch: 10 weigth: 500 quality: QualityType high.
	sut addBatch: 10 weigth: 100 quality: QualityType medium.
	sut addBatch: 10 weigth: 200 quality: QualityType low.
	sut addBatch: 10 weigth: 40 quality: QualityType low.
	sut addBatch: 10 weigth: 50 quality: QualityType discard.
	stock := sut currentStock.
	self assert: stock size equals: 4.
	totalAmount := stock sum: [ :each | each amount ].
	self assert: totalAmount equals: 890