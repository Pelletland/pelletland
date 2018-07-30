tests
testCanProduceProductWhenAvailableStock
	sut addContainer: (Container new: 1000).
	sut addBatch: 10 weigth: 500 quality: QualityType high.
	self assert: (sut canProduce: 10 of: premiumProduct) description: 'It should be able to make 10kg of premium product'