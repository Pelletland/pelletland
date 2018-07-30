tests
testRuleShouldNotBeSatisfied
	| rule |
	rule := QualityRule new: QualityType high min: 10 max: 15.
	self deny: (rule isSatisfiedBy: 1) description: 'Rule from 10%-15% should not be satisfied by a value of 1'.
	self deny: (rule isSatisfiedBy: 9) description: 'Rule from 10%-15% should not be satisfied by a value of 9'.
	self deny: (rule isSatisfiedBy: 16) description: 'Rule from 10%-15% should not be satisfied by a value of 16'.
	self deny: (rule isSatisfiedBy: 35) description: 'Rule from 10%-15% should not be satisfied by a value of 35'