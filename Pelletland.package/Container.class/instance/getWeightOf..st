querying
getWeightOf: aQualityType
	^ (self batchesWithQuality: aQualityType) inject: 0 into: [ :sum :each | sum + each weight ]