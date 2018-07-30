operations
make: aProduct weight: aDouble
  ^ self notYetImplemented 
"
|stock|
stock := Stock new.
stock := self stockAt: Date today.
self verifyStock: (stockAt: Date today) for: aProduct withWeight: aDouble

(stock lowPercentage > (aProduct lowPercentage * aWeight)) 
ifTrue[ (stock mediumPercentage > aProduct mediumPercentage * aWeight)
		ifTrue[(stock highPercentage > aProduct highPercentage * aWeight )
				ifTrue[ self buildProductwithLow: aProduct lowPercentage medium: aProduct mediumPercentage high: aProduct highPercentage ].
			].
	].
ifFalse[(stock mediumPercentage > (aProduct lowPercentage+aProduct mediumPercentage) * aWeight)]



 
"