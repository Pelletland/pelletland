initialization
initialize
	super initialize.
	incidents := OrderedCollection new.
	qualityDeteriorations := OrderedCollection new.
	incorporationDate := Date today.
	cost := 0.
	weight := 0