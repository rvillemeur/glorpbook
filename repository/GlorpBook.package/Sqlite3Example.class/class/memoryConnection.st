examples
memoryConnection

	<sampleInstance>
	| connection |
	connection := SQLite3Connection memory.
	connection open.
	^ connection