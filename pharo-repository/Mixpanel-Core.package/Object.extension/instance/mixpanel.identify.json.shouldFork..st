*Mixpanel-Core
mixpanel: eventName identify: identifyString json: aJson shouldFork: aBoolean

	aBoolean ifFalse:[ ^ self ].
	
	[ self basicMixpanel: eventName identify: identifyString json: aJson shouldFork: aBoolean. ] fork.