querying
qualityAt: aDate
	qualityDeteriorations
		do: [ :each | 
			each weeks - self incidentsTotalWeeks <= (self weeksFromIncorporationTo: aDate)
				ifTrue: [ ^ each resultantQuality ] ].
	^ initialQuality