private
addBatch: aBatch
	batches add: aBatch.
	aBatch container: self.
	^ true