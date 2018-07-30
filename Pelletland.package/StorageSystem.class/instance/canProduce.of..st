querying
canProduce: anAmount of: aProduct
	^ (self totalAmountWithQualityFor: aProduct) >= anAmount