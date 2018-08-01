products
makeProduct: aProduct weight: aDouble
	(self canProduce: aDouble of: aProduct)
		ifTrue: [ (self containersWithQualityFor: aProduct)
				inject: aDouble
				into: [ :amount :container | 
					container usedCapacity < amount
						ifTrue: [ amount - container usedCapacity.
							container withdraw: container usedCapacity ]
						ifFalse: [ container withdraw: amount.
							^ true ] ] ].
	^ false