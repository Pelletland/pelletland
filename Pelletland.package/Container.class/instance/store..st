batch handling
store: aBatch
	(self hasCapacityFor: aBatch weight)
		ifTrue: [ ^ self addBatch: aBatch ]
		ifFalse: [ ^ false ]