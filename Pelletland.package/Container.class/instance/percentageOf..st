private
percentageOf: aQualityType
	^ (((self amountOf: aQualityType) / (self usedCapacity)) * 100)