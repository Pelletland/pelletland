tests
testAddBatchToStorageWhenAvailableCapacityIsDistributed
	sut addContainer: (Container new: 500).
	sut addContainer: (Container new: 500).
	self should: [ sut addBatch: 10 weigth: 900 quality: QualityType low ] raise: Error.