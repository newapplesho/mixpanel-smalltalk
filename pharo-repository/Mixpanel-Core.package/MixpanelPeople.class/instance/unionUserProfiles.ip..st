actions
unionUserProfiles: aJsonObject ip: ipAddress
	^ self peopleUpdate: '$union' properties: aJsonObject ip: ipAddress