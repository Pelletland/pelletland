operation
qualityAt: aDate

	^ (qualityDeteriorations select:[:each | each date > aDate]) first.