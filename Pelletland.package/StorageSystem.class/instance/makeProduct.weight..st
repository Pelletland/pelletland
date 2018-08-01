products
makeProduct: aProduct weight: anAmount
	(self canProduce: anAmount of: aProduct)
		ifTrue: [ (self containersWithQualityFor: aProduct)
				inject: anAmount
				into: [ :amount :container | 
					container amountStored < amount
						ifTrue: [ amount - container amountStored.
							container withdraw: container amountStored ]
						ifFalse: [ container withdraw: amount.
							^ true ] ] ].
	^ false