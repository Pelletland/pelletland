as yet unclassified
couldMake: aProduct weight: aWeight

	^ (containers select: [ :container | self checkBounds: aProduct container: container ])
	inject: 0 into: [ :sum :container | sum + container availableCapacity ] >= aWeight.