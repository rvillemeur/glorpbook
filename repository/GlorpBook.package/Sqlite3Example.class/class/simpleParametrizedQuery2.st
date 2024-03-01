examples
simpleParametrizedQuery2

	<sampleInstance>
	| connection |
	connection := self simpleParametrizedQuery1.

	connection
		execute: 'INSERT INTO person(name,age) VALUES (?2, ?1);'
		value: 25
		value: 'Cyril'.
	^ connection