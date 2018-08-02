private
addBatch: aBatch
	batches add: aBatch.
	aBatch container: self.
	self addStorageRecord: Date today amount: aBatch weight.
	^ true