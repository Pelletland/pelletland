tests
testAddBatchToStorageWhenCapacityIsNotEnoughWithManyContainers
	sut addContainer: 100.
	sut addContainer: 200.
	sut addContainer: 300.
	sut addContainer: 400.
	self should: [ sut addBatch: 10 weigth: 900 quality: QualityType low ] raise: NotEnoughCapacity