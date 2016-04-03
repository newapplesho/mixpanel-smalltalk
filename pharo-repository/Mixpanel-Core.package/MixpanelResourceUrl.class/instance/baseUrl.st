accessing
baseUrl
	^ baseUrl ifNil: [ baseUrl := self defaultBaseUrl ].