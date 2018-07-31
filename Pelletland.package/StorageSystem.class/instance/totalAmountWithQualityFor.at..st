private
totalAmountWithQualityFor: aProduct at: aDate
	^ (self containersWithQualityFor: aProduct at: aDate) inject: 0 into: [ :sum :container | sum + container usedCapacity ]