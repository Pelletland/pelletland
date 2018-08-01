private
percentageOf: aQualityType at: aDate
	^ (self amountOf: aQualityType at: aDate) / self amountStored * 100