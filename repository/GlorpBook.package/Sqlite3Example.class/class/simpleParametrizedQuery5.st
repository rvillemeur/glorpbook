examples
simpleParametrizedQuery5

	<sampleInstance>
	| connection |
	connection := self simpleParametrizedQuery4.

	connection
		execute: 'INSERT INTO person(name,age) VALUES (@name, @age);'
		with: {
				('@name' -> 'Guillaume').
				('@age' -> 30) } asDictionary.
	^ connection