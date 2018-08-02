tests
testCannotProduceProductMixingDifferentQualitiesFromDifferentContainers
	sut addContainer: 91.
	sut addContainer: 50.
	sut addBatch: 10 weigth: 91 quality: QualityType high.
	sut addBatch: 10 weigth: 8 quality: QualityType medium.
	sut addBatch: 10 weigth: 1 quality: QualityType low.
	sut addBatch: 10 weigth: 1 quality: QualityType discard.
	self deny: (sut canProduce: 100 of: premiumProduct) description: 'It shouldnt be able to make 10kg of premium product'