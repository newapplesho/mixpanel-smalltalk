*Mixpanel-Core
mixpanel: eventName identify: identifyString json: aJson shouldFork: shouldFork
	| sele |
	sele := shouldFork ifTrue: [#fork] ifFalse:[ #value].
	[ self basicMixpanel: eventName identify: identifyString json: aJson] perform: sele.