initialization
initialize
	super initialize.
	qualityDeteriorations := OrderedCollection new.
	incidents := OrderedCollection new.
	cost := 0.
	incorporationDate := Date today.
	weight := 0