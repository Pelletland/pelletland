initialization
initialize
	super initialize.
	incidents := OrderedCollection new.
	cost := 0.
	incorporationDate := Date today.
	weight := 0