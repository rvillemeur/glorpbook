setting up - database
createTable

	<sampleInstance>
	| session |
	session := self session.
	session createTables.
	^session.