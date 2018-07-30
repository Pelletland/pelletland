querying
hasQualityFor: aProduct
	^ aProduct qualities
		allSatisfy: [ :qualityRule | qualityRule isSatisfiedBy: (self percentageOf: qualityRule qualityType) ]