accessing - data
queryTable3

	<sampleInstance>
	| session |
	session := self session.
	^ session read: Person.