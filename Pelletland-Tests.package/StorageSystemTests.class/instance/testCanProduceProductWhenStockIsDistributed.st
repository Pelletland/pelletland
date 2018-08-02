tests
testCanProduceProductWhenStockIsDistributed
	sut addContainer: 10.
	sut addContainer: 10.
	sut addBatch: 10 weigth: 9 quality: QualityType high.
	sut addBatch: 10 weigth: 1 quality: QualityType high.
	self assert: (sut canProduce: 10 of: premiumProduct) description: 'It should be able to make 10kg of premium product'