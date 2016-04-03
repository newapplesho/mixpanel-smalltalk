private
peopleUpdate: actionType properties: anObject ip: ipAddress
	| properties url |
	properties := self defaultProperties.
	ipAddress isEmptyOrNil
		ifFalse: [ properties at: '$ip' put: ipAddress ].
	properties at: actionType put: anObject.
	url := self resourceUrl.
	url queryAt: 'data' add: (ZnUtils encodeBase64: properties asString).
	^ self client httpPost: url contents: nil.