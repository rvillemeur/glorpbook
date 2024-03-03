accessing - data
queryTable

	<sampleInstance>
	| session |
	session := self session.
	^session read: Person where: [ :each | each firstName = 'Adele' ].
	