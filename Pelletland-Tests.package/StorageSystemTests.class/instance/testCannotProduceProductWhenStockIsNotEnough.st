tests
testCannotProduceProductWhenStockIsNotEnough
	sut addContainer: 1000.
	sut addBatch: 10 weigth: 9 quality: QualityType high.
	self deny: (sut canProduce: 10 of: premiumProduct) description: 'It shouldnt be able to make 10kg of premium product'