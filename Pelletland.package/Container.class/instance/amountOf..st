querying
amountOf: aQualityType
	^ (self batchesWithQuality: aQualityType) inject: 0 into: [ :sum :batch | sum + batch weight ]