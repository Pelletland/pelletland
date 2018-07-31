querying
amountOf: aQualityType at: aDate
	^ (self batchesWithQuality: aQualityType at: aDate) inject: 0 into: [ :sum :batch | sum + batch weight ]