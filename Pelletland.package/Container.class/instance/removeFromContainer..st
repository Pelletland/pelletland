removing
removeFromContainer: aWeight	
	self qualityTypes do: [ :quality |
		(self batchesWithQuality: quality) inject: (aWeight * self percentageOf: quality) into: [ :amount :batch |
			(batch weight < amount)
			ifTrue: [
				amount - (batch weight).
				batch removeFromBatch: batch weight.
				batch addRecord: 'Removed ' + (batch weight asString) + 'kg from batch' date: Date today. 
				]
			ifFalse: [
				batch removeFromBatch: amount.
				batch addRecord: 'Removed ' + (amount) + 'kg from batch' date: Date today.
				^ true.
				].
			].
		].
		^ true