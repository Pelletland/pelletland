removing
removeFromContainer: aWeight
	| initialValue |
	self qualityTypes do: [ :quality |
		initialValue := ((aWeight * (self percentageOf: quality)) / 100).
		(self batchesWithQuality: quality) inject: initialValue into: [ :amount :batch |
			(batch weight < amount)
			ifTrue: [
				amount - (batch weight).
				batch removeFromBatch: batch weight.
				batch addRecord: 'Removed ' , (batch weight asString) , 'kg from batch' date: Date today. 
				]
			ifFalse: [
				batch removeFromBatch: amount.
				batch addRecord: 'Removed ' , (amount asString) , 'kg from batch' date: Date today.
				^ true.
				].
			].
		].
		^ true