removing
removeFromContainer: aWeight
	
	self getQualityTypes do: [ :quality |
		(self getQualityBatchesOf: quality) inject: (aWeight * self getQualityPercentageOf: quality) into: [ :amount :batch |
			(batch weight < amount)
			ifTrue: [
				amount - (batch weight).
				batch removeFromBatch: batch weight.
				]
			ifFalse: [
				batch removeFromBatch: amount.
				^ true.
				].
			].
		].
		^ true
 