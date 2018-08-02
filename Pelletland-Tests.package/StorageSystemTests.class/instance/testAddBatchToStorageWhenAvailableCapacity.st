tests
testAddBatchToStorageWhenAvailableCapacity
	sut addContainer: 1000.
	self shouldnt: [ sut addBatch: 10 weigth: 900 quality: QualityType low ] raise: Error description: 'It should add the batch to the system'.