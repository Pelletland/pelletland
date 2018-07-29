querying
batchesWithQuality: aQualityType
	^ batches select: [ :each | (each currentQuality) = aQualityType ]