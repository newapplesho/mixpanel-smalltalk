accessing
shouldFork
	^ self at: #shouldFork ifAbsentPut: [ true ]