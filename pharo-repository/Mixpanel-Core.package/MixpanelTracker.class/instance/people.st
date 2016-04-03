accessing
people
	^ people ifNil:[ people := MixpanelPeople new identify: self identify. ]