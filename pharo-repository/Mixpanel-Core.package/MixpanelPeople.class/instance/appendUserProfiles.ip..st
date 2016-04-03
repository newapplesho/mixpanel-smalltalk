actions
appendUserProfiles: aJsonObject ip: ipAddress
	^ self peopleUpdate: '$append' properties: aJsonObject ip: ipAddress