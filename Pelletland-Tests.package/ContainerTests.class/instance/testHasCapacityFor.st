tests
testHasCapacityFor
	| container quality big_batch small_batch |
	container := Container new: 100.
	quality := QualityType low.
	big_batch := Batch new: quality cost: 10 weigth: 900.
	small_batch := Batch new: quality cost: 50 weigth: 100.
	self assert: (container hasCapacityFor: small_batch) description: 'It should have capacity for the small batch'.
	self deny: (container hasCapacityFor: big_batch) description: 'It shouldnt have capacity for the big batch'.