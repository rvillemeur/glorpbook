examples
fileConnection

	<sampleInstance>
	| connection |
	connection := SQLite3Connection on:
		              (Smalltalk imageDirectory / 'mydatabase.db') fullName.
	connection open.
	^ connection