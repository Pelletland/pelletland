private
addBatch: aBatch
	aBatch addRecord: 'Batch added with ' + (aBatch weight asString) + 'kg' date: Date today. 
	batches add: aBatch.
	aBatch container: self.
	^ true