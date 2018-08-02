querying
batchesWithNoDiscardAt: aDate
	^ batches reject: [ :batch | (batch qualityAt: aDate) = QualityType discard ]