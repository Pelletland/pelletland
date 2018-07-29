as yet unclassified
couldMakeProduct: aProduct weight: aWeight

	^ (self selectPossibleContainers: aProduct)
	inject: 0 into: [ :sum :container | sum + container usedCapacity ] >= aWeight.