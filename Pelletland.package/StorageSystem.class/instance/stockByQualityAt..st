stock
stockByQualityAt: aDate
	^ Dictionary
		newFromKeys: self qualityTypes asOrderedCollection
		andValues: (self qualityTypes collect: [ :each | self stockOf: each at: aDate ] as: OrderedCollection)