tests
testCanProduceProductMixingDifferentQualities
	sut addContainer: (Container new: 1000).
	sut addBatch: 10 weigth: 90 quality: QualityType high.
	sut addBatch: 10 weigth: 8 quality: QualityType medium.
	sut addBatch: 10 weigth: 1 quality: QualityType low.
	sut addBatch: 10 weigth: 1 quality: QualityType discard.
	self assert: (sut canProduce: 100 of: premiumProduct) description: 'It should be able to make 100kg of premium product'