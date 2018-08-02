removing
withdraw: anAmount
	| qualitiesAndPercentages |
	"la variable temporal qualitiesAndPercentages se usa porque necesitamos congelar los porcentajes calculados"
	qualitiesAndPercentages := self qualitiesAndPercentages.
	self qualityTypes do: [ :quality | self withdraw: (anAmount * (qualitiesAndPercentages at: quality) / 100) of: quality].