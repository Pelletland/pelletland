querying
getQualityTypes
	^ batches collect: [ :batch | batch qualityAt: Date today ] as: Set