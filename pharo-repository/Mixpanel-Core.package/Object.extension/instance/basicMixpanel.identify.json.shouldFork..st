*Mixpanel-Core
basicMixpanel: eventName identify: identifyString json: aJson shouldFork: aBoolean
	[ | tracker |
		tracker := MixpanelTracker new.
		identifyString isEmptyOrNil
			ifFalse: [ tracker identify: identifyString ].
		
		tracker track: eventName properties: aJson ]
		on: Error
		do: [ :ex | self handleMixpanelError: ex ]