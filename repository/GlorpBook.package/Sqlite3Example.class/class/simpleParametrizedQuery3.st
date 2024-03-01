examples
simpleParametrizedQuery3

	<sampleInstance>
	| connection |
	connection := self simpleParametrizedQuery2.

	connection
		execute: 'INSERT INTO person(name,age) VALUES (?2, ?1);'
		with: #( 32 'Sophie' ).
	^ connection