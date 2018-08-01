private
availableQualities
	^ ((containers collect: [ :container | container qualityTypes ]) flattened) asSet 