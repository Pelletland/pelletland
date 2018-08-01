querying
qualityAt: aDate
	| weeksTemp |
	weeksTemp := (aDate subtractDate: self incorporationDate) / 7.
	qualityDeteriorations
		do: [ :each | 
			each weeks - self incidentsTotalWeeks <= weeksTemp
				ifTrue: [ ^ each resultantQuality ] ].
	^ initialQuality