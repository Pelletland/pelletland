private
stockOf: aQualityType at: aDate
	^ containers inject: 0 into: [ :amount :container | amount + (container amountOf: aQualityType at: aDate) ]