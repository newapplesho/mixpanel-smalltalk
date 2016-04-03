accessing
client
	^ client ifNil:[ client := MixpanelRestClient new ].