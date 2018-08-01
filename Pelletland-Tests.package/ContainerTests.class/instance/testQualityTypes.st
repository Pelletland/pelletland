tests
testQualityTypes
	| container |
	container := Container new: 1000.	
	self assert: (container qualityTypes size) equals: 0.
	
	container store: (Batch new: QualityType low cost: 10 weigth: 100).
	self assert: (container qualityTypes size) equals: 1.
	
   container store: (Batch new: QualityType low cost: 10 weigth: 50).
	self assert: (container qualityTypes size) equals: 1.
	
   container store: (Batch new: QualityType medium cost: 10 weigth: 50).
	self assert: (container qualityTypes size) equals: 2.

   container store: (Batch new: QualityType discard cost: 10 weigth: 50).
	self assert: (container qualityTypes size) equals: 3.
	
   container store: (Batch new: QualityType high cost: 10 weigth: 50).
	self assert: (container qualityTypes size) equals: 4.
 
  	container store: (Batch new: QualityType discard cost: 10 weigth: 50).
   container store: (Batch new: QualityType high cost: 10 weigth: 50).
	self assert: (container qualityTypes size) equals: 4.