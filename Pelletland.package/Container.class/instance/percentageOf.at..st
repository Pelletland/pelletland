private
percentageOf: aQualityType at: aDate
	^ (((self amountOf: aQualityType at: aDate) / (self usedCapacity)) * 100)