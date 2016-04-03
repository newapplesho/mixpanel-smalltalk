accessing
url
	^ url ifNil:[ url := self baseUrl]