removing
withdraw: anAmount
	| dic |
	dic := self qualitiesAndPercentages.
	self qualityTypes do: [ :quality | self withdraw: (anAmount * (dic at: quality) / 100) of: quality].