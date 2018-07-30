operations
addBatch: aCost weigth: aWeigth quality: aQualityType aIncorporationDate: aDate
	self findContainerWithCapacityFor: aWeigth 
		ifFound: [ :container | |batch| 
			batch := Batch new: aQualityType cost: aCost weigth: aWeigth	incorporationDate: aDate.
			container store: batch.
			^ batch ]
		ifNone: [ self noCapacityForBatchError ]