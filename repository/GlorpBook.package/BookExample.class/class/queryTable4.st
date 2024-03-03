accessing - data
queryTable4

	<sampleInstance>
	| session |
	session := self session.
	^ session
		  readOneOf: Person
		  where: [ :each | each firstName = 'Adele' ]