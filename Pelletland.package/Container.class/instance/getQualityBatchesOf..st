querying
getQualityBatchesOf: aQualityType

^ batches select:[ :each | (each qualityAt: Date today) = aQualityType].