*Mixpanel-Core
mixpanelPrintString

	| dt t  |
	dt := DateAndTime now asUTC.
	t := (dt asTimeUTC print24 findTokens: '.')first.
	^ (dt asDate printFormat:#(3 2 1 $- 1 1 2)),'T',t.