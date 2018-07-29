operation
buildQualityChanges
|counter|
 counter :=1.
	(self initialQuality steps) timesRepeat: [(qualityDeteriorations add: (QualityDeterioration new: (self incorporationDate addDays: deteriorationDays*counter) and: self nextDeteriorationQuality)).
		counter=counter+1
		].
	
