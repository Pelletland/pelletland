removing
removeFromContainer: aWeight
	| initialValue |
	self qualityTypes do: [ :quality |
		initialValue := ((aWeight * (self percentageOf: quality)) / 100).
		(self batchesWithQuality: quality) inject: initialValue into: [ :amount :batch |
			(batch weight <= amount)
			ifTrue: [
				batch addWithdrawRecord: Date today amount: (batch weight).
				batch addEmptiedRecord: Date today amount: (batch weight).
				amount - (batch weight).
				batch withdraw: batch weight.
				]
			ifFalse: [
				batch addWithdrawRecord: Date today amount: amount.
				batch withdraw: amount.
				^ true.
				].
			].
		].
		^ true