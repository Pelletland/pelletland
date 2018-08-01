tests
testCannotProduceProductWhenQualityIsNotEnough
	sut addContainer: (Container new: 1000).
	sut addBatch: 10 weigth: 5 quality: QualityType high.
	sut addBatch: 10 weigth: 15 quality: QualityType medium.
	self deny: (sut canProduce: 11 of: premiumProduct) description: 'It shouldnt be able to make 10kg of premium product'