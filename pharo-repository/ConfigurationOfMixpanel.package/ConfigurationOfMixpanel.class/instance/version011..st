versions
version011: spec 
	<version: '0.1.1' imports: #('0.1-baseline') >
	
	spec for: #common do: [
		spec package: 'Neo-JSON-Core' with: 'Neo-JSON-Core-SvenVanCaekenberghe.33'.
		spec
			baseline: 'Mixpanel' with: [ 
				spec repository:'github://newapplesho/mixpanel-smalltalk:v0.1.1/pharo-repository' ];
			import: 'Mixpanel' 
	]