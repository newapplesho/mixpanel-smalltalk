http-method
httpGet: aUri
	| request |
	request := self createRequest.
	request method: #GET.
	request url: aUri.
	self client request: request.
	client execute.
	^ client response.