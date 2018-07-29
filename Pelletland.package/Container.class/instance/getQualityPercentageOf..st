querying
getQualityPercentageOf: aQualityType

	^ (self getWeightOf: aQualityType / self usedCapacity) * 100.