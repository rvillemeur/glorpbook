examples
simpleParametrizedQuery4

	<sampleInstance>
	| connection |
	connection := self simpleParametrizedQuery3.

	connection
		execute: 'INSERT INTO person(name,age) VALUES (:name, :age);'
		with: {
				(':name' -> 'Guillaume').
				(':age' -> 30) } asDictionary.
	^ connection