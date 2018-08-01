initialization
initialize
	super initialize.
	incidents := OrderedCollection new.
	qualityDeteriorations := SortedCollection sortBlock: [ :left :right | left weeks > right weeks ].
	records := OrderedCollection new.
	incorporationDate := Date today.
	cost := 0.
	weight := 0