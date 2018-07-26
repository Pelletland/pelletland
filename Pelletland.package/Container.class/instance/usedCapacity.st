operation
usedCapacity
	
	(batches notEmpty)
	ifTrue:[ ^	(batches inject: 0 into: [ :sum :each | sum + each weight ])]
	ifFalse:[^ 0].