actions
addUserProfiles: aJsonObject ip: ipAddress
	^ self peopleUpdate: '$add' properties: aJsonObject ip: ipAddress