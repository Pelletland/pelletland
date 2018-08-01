recording
addWithdrawRecord: aDate amount: anAmount
	^ self addRecord: (WithdrawRecord new: aDate amount: anAmount)