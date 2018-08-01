querying
qualityTypes
	^ (batches collect: [ :batch | (batch qualityAt: Date today) name]) asSet