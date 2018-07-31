private
addBatch: aBatch
	aBatch addStorageRecord: Date today amount: aBatch weight.
	batches add: aBatch.
	aBatch container: self.
	^ true