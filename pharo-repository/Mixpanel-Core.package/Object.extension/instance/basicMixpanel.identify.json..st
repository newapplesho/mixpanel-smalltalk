*Mixpanel-Core
basicMixpanel: eventName identify: identifyString json: aJson
	[ | tracker resp |
	tracker := MixpanelTracker new.
	identifyString isEmptyOrNil
		ifFalse: [ tracker identify: identifyString ].
	resp := tracker track: eventName properties: aJson.
	resp isError
		ifTrue: [ self handleMixpanelErrorResponse: resp ] ]
		on: Error
		do: [ :ex | self handleMixpanelError: ex ]