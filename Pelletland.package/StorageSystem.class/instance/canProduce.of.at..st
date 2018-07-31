querying
canProduce: anAmount of: aProduct at: aDate
	^ (self totalAmountWithQualityFor: aProduct at: aDate) >= anAmount