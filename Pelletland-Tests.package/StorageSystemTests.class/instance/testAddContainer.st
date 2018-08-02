tests
testAddContainer
	| container |
	self assert: sut containers isEmpty description: 'System should not have any containers'.
	container := sut addContainer: 1000.
	self assert: container capacity equals: 1000.
	self assert: container amountStored equals: 0