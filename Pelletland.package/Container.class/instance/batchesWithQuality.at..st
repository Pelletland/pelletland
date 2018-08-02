querying
batchesWithQuality: aQualityType at: aDate
	^ batches select: [ :each | ((each qualityAt: aDate) = aQualityType) & (each weight > 0) ]