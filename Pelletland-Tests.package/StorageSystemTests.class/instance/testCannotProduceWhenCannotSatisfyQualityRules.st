tests
testCannotProduceWhenCannotSatisfyQualityRules
	sut addContainer: 1000.
	sut addBatch: 10 weigth: 90 quality: QualityType high.
	sut addBatch: 10 weigth: 7 quality: QualityType medium.
	sut addBatch: 10 weigth: 2 quality: QualityType low.
	sut addBatch: 10 weigth: 1 quality: QualityType discard.
	self deny: (sut canProduce: 100 of: premiumProduct) description: 'It shouldnt be able to make 100kg of premium product'