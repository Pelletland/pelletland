stock
stockAt: aDate
	^ self qualityTypes collect: [ :each | Stock new: each amount: (self stockOf: each at: aDate) ]