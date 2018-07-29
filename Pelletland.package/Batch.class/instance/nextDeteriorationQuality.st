operation
nextDeteriorationQuality

	(qualityDeteriorations isEmpty)
	ifFalse:[ ^ (qualityDeteriorations last) nextDeteriorationQuality ]
	ifTrue:[ ^ initialQuality nextDeteriorationQuality ].