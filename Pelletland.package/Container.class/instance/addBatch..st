operation
addBatch: aBatch

	(capacity > (self usedCapacity + aBatch weight))
	ifTrue: [batches add: aBatch]
	ifFalse: [Transcript show: 'No hay suficiente lugar para el batch'.]