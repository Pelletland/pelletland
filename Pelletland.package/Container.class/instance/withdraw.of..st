batch handling
withdraw: anAmount of: aQualityType
	| amount amountToWithdraw |
	amount := anAmount.
	(self batchesWithQuality: aQualityType)
		do: [ :batch | 
			amountToWithdraw := batch weight min: amount.
			batch withdraw: amountToWithdraw.
			self addWithdrawRecord: Date today amount: amountToWithdraw.
			amount := amount - amountToWithdraw ].
	^ true