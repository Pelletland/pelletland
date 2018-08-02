initialization
initialize
	super initialize.
	incidents := OrderedCollection new.
	qualityDeteriorations := SortedCollection sortBlock: [ :left :right | left weeks > right weeks ].
	incorporationDate := Date today.
	cost := 0.
	weight := 0