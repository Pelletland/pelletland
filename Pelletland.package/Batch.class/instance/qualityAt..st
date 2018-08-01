querying
qualityAt: aDate
	| weeksTemp orderedQualityDeteriorations |
	orderedQualityDeteriorations := self qualityDeteriorations asSortedCollection: [ :qd1 :qd2 | qd1 weeks > qd2 weeks ].
	weeksTemp := (aDate subtractDate: self incorporationDate) / 7.
	orderedQualityDeteriorations
		do: [ :qd | 
			qd weeks - self incidentsTotalWeeks <= weeksTemp
				ifTrue: [ ^ qd resultantQuality ] ].
	^ initialQuality