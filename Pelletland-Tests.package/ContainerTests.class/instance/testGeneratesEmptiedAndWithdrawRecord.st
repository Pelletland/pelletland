tests
testGeneratesEmptiedAndWithdrawRecord
	| container batch withdraw_record emptied_record |
	container := Container new: 1000.
	batch := Batch new: QualityType low cost: 10 weigth: 100.
	self assert: batch records isEmpty.
	container store: batch.
	container withdraw: 10.
	container withdraw: 90.
	self assert: batch records size equals: 4.
	
	withdraw_record := batch records second.
	self assert: withdraw_record date equals: Date today.
	self assert: withdraw_record description equals: 'Withdrawn 10kg'.
	
	withdraw_record := batch records third.
	self assert: withdraw_record date equals: Date today.
	self assert: withdraw_record description equals: 'Withdrawn 90kg'.
	
	emptied_record := batch records fourth.
	self assert: emptied_record date equals: Date today.
	self assert: emptied_record description equals: 'Emptied'