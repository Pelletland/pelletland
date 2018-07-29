tests
testHasCapacityForAfterStoringBatch
	| container quality big_batch small_batch |
	container := Container new: 1000.
	quality := QualityType low.
	big_batch := Batch new: quality cost: 10 weigth: 900.
	small_batch := Batch new: quality cost: 50 weigth: 200.
	self assert: (container hasCapacityFor: small_batch) description: 'It should have capacity for the small batch'.
	self assert: (container hasCapacityFor: big_batch) description: 'It should have capacity for the big batch'.
	container store: small_batch.
	self deny: (container hasCapacityFor: big_batch) description: 'It shouldnt have capacity for the big batch after storing the small batch'