private
containersWithQualityFor: aProduct
	^ containers select: [ :container | container hasQualityFor: aProduct ]