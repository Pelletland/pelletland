tests
testMakeProductDecrementsAvailableStock
	sut addContainer: 1000.
	sut addBatch: 10 weigth: 500 quality: QualityType high.
	self assert: (sut currentStock at: QualityType high) equals: 500.
	self assert: (sut makeProduct: premiumProduct weight: 10) description: 'It should be able to make 10kg of premium product'.
	self assert: (sut currentStock at: QualityType high) equals: 490.
	self assert: (sut makeProduct: premiumProduct weight: 90) description: 'It should be able to make 90kg of premium product'.
	self assert: (sut currentStock at: QualityType high) equals: 400