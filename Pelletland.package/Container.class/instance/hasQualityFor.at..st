querying
hasQualityFor: aProduct at: aDate
	^ aProduct qualities
		allSatisfy: [ :qualityRule | qualityRule isSatisfiedBy: (self percentageOf: (qualityRule qualityType) at: aDate) ]