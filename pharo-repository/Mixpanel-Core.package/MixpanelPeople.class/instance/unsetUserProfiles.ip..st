actions
unsetUserProfiles: aCollection ip: ipAddress
	^ self peopleUpdate: '$unset' properties: aCollection ip: ipAddress