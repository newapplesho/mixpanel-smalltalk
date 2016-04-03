defaults
defaultProperties
	 | json |
	json := NeoJSONObject new.
	json at: 'mp_lib' put: 'Pharo Smalltalk'.
	json at: '$distinct_id' put: self identify.
	json at: '$token' put: self settings token.
	json at: '$time' put: DateAndTime now asUTC asUnixTime.
	^ json