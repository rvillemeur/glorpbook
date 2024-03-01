examples
simpleResult

	<sampleInstance>
	| connection cursor |
	connection := self simpleParametrizedQuery5.

	cursor := connection execute: 'SELECT * FROM person;'.
	^ cursor