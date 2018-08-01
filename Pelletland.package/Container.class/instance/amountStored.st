accesing
amountStored
	^ batches inject: 0 into: [ :sum :each | sum + each weight ]