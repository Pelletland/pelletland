private
qualityTypes
	^ batches collect: [ :batch | batch qualityAt: Date today ] as: Set