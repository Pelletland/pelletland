querying
getQualityPercentageOf: aQualityType

	^ (self getWeightOf: aQualityType / self availableCapacity) * 100.