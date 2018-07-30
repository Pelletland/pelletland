products
makeProduct: aProduct weight: aDouble
 	(self couldMakeProduct: aProduct weight: aDouble)
	ifTrue: [ 
		(self selectPossibleContainers: aProduct) inject: aDouble into: [ :amount :container |
			(container usedCapacity < amount)
			ifTrue: [
				amount - (container usedCapacity).
				container removeFromContainer: container usedCapacity.
				]
			ifFalse: [
				container removeFromContainer: amount.
				^ true.
				].
			].
		].
  ^ false.