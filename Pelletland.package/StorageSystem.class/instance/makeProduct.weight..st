products
makeProduct: aProduct weight: aDouble
	(self canProduce: aDouble of: aProduct)
		ifTrue: [ (self containersWithQualityFor: aProduct)
				inject: aDouble
				into: [ :amount :container | 
					container usedCapacity < amount
						ifTrue: [ amount - container usedCapacity.
							container removeFromContainer: container usedCapacity ]
						ifFalse: [ container removeFromContainer: amount.
							^ true ] ] ].
	^ false