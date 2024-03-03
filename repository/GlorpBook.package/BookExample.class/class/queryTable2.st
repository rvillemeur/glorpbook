accessing - data
queryTable2

	<sampleInstance>
	| session |
	session := self session.
	^ session readOneOf: Person.