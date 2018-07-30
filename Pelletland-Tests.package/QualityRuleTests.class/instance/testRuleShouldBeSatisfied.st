tests
testRuleShouldBeSatisfied
	| rule |
	rule := QualityRule new: QualityType high min: 10 max: 15.
	self assert: (rule isSatisfiedBy: 10) description: 'Rule from 10%-15% should be satisfied by a value of 10'.
	self assert: (rule isSatisfiedBy: 15) description: 'Rule from 10%-15% should be satisfied by a value of 15'.
	self assert: (rule isSatisfiedBy: 12) description: 'Rule from 10%-15% should be satisfied by a value of 12'