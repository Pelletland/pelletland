removing
withdraw: anAmount of: aQualityType
	| amount amountToWithdraw |
	amount := anAmount.
	(self batchesWithQuality: aQualityType)
		do: [ :batch | 
			amountToWithdraw := batch weight min: amount.
			batch addWithdrawRecord: Date today amount: amountToWithdraw.
			batch withdraw: amountToWithdraw.
			amount := amount - amountToWithdraw ].
	^ true