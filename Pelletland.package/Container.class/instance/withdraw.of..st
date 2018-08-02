removing
withdraw: anAmount of: aQualityType
	| amount |
	amount := anAmount.
	(self batchesWithQuality: aQualityType) do: [ :batch |
			((batch weight) <= amount)
			ifTrue: [
				batch addWithdrawRecord: Date today amount: (batch weight).
				amount := amount - (batch weight).
				batch withdraw: batch weight.
				]
			ifFalse: [
				batch addWithdrawRecord: Date today amount: amount.
				batch withdraw: amount.
				^ true.
				].
			].
		^ true.
	
