examples
simpleParametrizedQuery1

	<sampleInstance>
	| connection |
	connection := self simpleQuery.

	connection
		execute: 'INSERT INTO person(name,age) VALUES (?, ?);'
		value: 'Julien'
		value: 24.
	^ connection