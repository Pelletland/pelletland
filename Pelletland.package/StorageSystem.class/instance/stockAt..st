stock
stockAt: aDate
	| stockRecords |
	stockRecords := OrderedCollection new.
	(self qualityTypes) do: [ :qualityType |
		stockRecords add: (Stock new 
			initialize: qualityType
			amount: (self stockOf: qualityType at: aDate)).
		].
	^ stockRecords.