tests
testAddManyContainers
	self assert: sut containers isEmpty description: 'System should not have any containers'.
	sut addContainer: 1000.
	sut addContainer: 2000.
	sut addContainer: 3000.
	self assert: sut containers size equals: 3