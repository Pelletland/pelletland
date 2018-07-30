private
totalAmountWithQualityFor: aProduct
	^ (self containersWithQualityFor: aProduct) inject: 0 into: [ :sum :container | sum + container usedCapacity ]