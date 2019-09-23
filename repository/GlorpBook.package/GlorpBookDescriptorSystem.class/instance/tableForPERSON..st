tables
tableForPERSON: aTable
	(aTable createFieldNamed: 'id' type: platform serial) bePrimaryKey.
	aTable createFieldNamed: 'firstName' type: (platform varChar: 100).
	aTable createFieldNamed: 'lastName' type: (platform varChar: 100).