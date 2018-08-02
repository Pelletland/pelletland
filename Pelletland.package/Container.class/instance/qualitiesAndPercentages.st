querying
qualitiesAndPercentages
	| dictionary |
	dictionary := Dictionary new.
	self qualityTypes do: [ :quality | dictionary at: quality put: (self percentageOf: quality ) ].
	^ dictionary