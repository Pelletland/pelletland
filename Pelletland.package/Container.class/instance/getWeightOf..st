querying
getWeightOf: aQualityType

	^	((self getQualityBatchesOf: aQualityType) inject: 0 into:[ :sum :each | sum + each weight]).