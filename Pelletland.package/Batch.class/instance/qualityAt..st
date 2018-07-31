operation
qualityAt: aDate
	
	| weeksTemp orderedQualityDeteriorations |
	orderedQualityDeteriorations := self qualityDeteriorations asSortedCollection: [ :qd1 :qd2 | qd1 weeks > qd2 weeks ].
	weeksTemp := (aDate subtractDate: (self incorporationDate)) / 7.
	orderedQualityDeteriorations do: [ :qd | "Tengo que iterar al reves, de la mayor cantidad de semanas a la menor"	
		(((qd weeks) - self incidentsTotalWeeks) < weeksTemp)
		ifTrue: [ ^ qd resultantQuality ].
		].
	^ initialQuality 
	
"
Entra calidad Alta.

Te dicen que:
- En 5 semanas se hace Media
- En 7 semanas mas se hace Baja
- En 2 semanas mas se hace Descarte

QualityDeterioration new initialize 5 resultant: Media
QualityDeterioration new initialize 12 resultant: Baja
QualityDeterioration new initialize 14 resultant: Descarte
"