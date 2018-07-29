testing
isQualityInRange: aQuality from: lowerBound to: upperBound
	| percentage |
	percentage  := self getQualityPercentageOf: aQuality.
	^ (percentage > lowerBound) and: (percentage < upperBound).