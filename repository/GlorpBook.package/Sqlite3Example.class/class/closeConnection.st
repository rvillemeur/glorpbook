examples
closeConnection

	<sampleInstance>
	| connection |
	connection := self fileConnection.
	connection close.
	^ connection