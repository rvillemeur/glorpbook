tables
tableForADDRESS: aTable
	(aTable createFieldNamed: 'id' type: platform serial) bePrimaryKey.
	aTable createFieldNamed: 'street' type: (platform varChar: 100).
	aTable createFieldNamed: 'zip' type: platform integer.