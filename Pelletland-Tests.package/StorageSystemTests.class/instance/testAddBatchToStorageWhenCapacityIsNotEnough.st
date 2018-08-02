tests
testAddBatchToStorageWhenCapacityIsNotEnough
	sut addContainer: 500.
	self should: [ sut addBatch: 10 weigth: 900 quality: QualityType low ] raise: NotEnoughCapacity