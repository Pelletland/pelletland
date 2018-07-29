initialization
initializeWith: aQuality and: anInteger 
	super initialize.
	incidents := OrderedCollection new.
	cost := 0.
	incorporationDate := Date today.
	weight := 0.
	qualityDeteriorations := OrderedCollection new.
	initialQuality := aQuality.
	deteriorationDays := anInteger.
