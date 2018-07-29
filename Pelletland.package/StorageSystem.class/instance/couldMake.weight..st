as yet unclassified
couldMake: aProduct weight: weight

	containers inject: 0 into: [ :sum :container |
		(self checkBounds: aProduct container: container)
			ifTrue: [
				sum += container usedCapacity.
				(sum >= weight)
				ifTrue: [ ^ true ].
			].
		 ].
	^ false.