storing
store: aBatch
	(self hasCapacityFor: aBatch)
		ifTrue: [ ^self addBatch: aBatch ].
	^ false