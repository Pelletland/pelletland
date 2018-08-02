containers
addContainer: aCapacity
	| container |
	container := Container new: aCapacity.
	containers add: container.
	^ container