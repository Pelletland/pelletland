private
containersWithQualityFor: aProduct at: aDate
	^ containers select: [ :container | container hasQualityFor: aProduct at: aDate ]