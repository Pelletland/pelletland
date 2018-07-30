removing
removeFromBatch: aWeight
	weight := weight - aWeight.
	(weight == 0)
	ifTrue: [ self addRecord: 'Batch removed from Storage System.' date: Date today ]