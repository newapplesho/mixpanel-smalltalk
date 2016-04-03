actions
setUserProfiles: aJsonObject ip: ipAddress
	^ self peopleUpdate: '$set' properties: aJsonObject ip: ipAddress