tables
tableForPERSON: aTable
	(aTable createFieldNamed: 'id' type: platform serial) bePrimaryKey.
	aTable createFieldNamed: 'firsName' type: (platform varChar: 100).
	aTable createFieldNamed: 'lastName' type: (platform varchar: 100).
	aTable createFieldNamed: 'birthDate' type: platform date