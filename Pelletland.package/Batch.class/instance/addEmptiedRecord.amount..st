recording
addEmptiedRecord: aDate amount: anAmount
	^ self addRecord: (EmptiedRecord new: aDate)