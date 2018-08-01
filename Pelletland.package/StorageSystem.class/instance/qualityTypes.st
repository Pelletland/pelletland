private
qualityTypes
	^ ((containers collect: [ :container | container qualityTypes ]) flattened) asSet 