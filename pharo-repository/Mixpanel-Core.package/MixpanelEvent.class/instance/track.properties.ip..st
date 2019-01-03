actions
track: event properties: aJsonObject ip: ipAddress
	| properties json url otherProperties |
	otherProperties := aJsonObject ifNil: [ otherProperties := NeoJSONObject new ].
	properties := self defaultProperties , otherProperties.
	ipAddress isEmptyOrNil
		ifFalse: [ properties at: 'ip' put: ipAddress ].
	json := NeoJSONObject new.
	json at: 'event' put: event.
	json at: 'properties' put: properties.
	url := self resourceUrl.
	url queryAt: 'data' add: (ZnUtils encodeBase64: json asString utf8Encoded).
	self useIpAddress
		ifTrue: [ url queryAt: 'ip' put: 1 ].
	"url queryAt: 'img' put: 1."
	^ self client httpGet: url 