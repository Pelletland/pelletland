querying
selectPossibleContainers: aProduct
 	^ containers select: [ :container | self checkBounds: aProduct container: container ]