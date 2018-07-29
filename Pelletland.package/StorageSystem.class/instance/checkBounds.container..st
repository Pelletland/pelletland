as yet unclassified
checkBounds: aProduct container: aContainer
	
	^ aProduct qualities allSatisfy: [ :percentageQuality |
			(aContainer isQualityInRange: percentageQuality quality from: percentageQuality lowerBound to: percentageQuality upperBound)
	]