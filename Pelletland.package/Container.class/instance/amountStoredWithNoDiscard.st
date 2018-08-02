accesing
amountStoredWithNoDiscard
	^ (self batchesWithNoDiscard) inject: 0 into: [ :sum :each | sum + each weight ]