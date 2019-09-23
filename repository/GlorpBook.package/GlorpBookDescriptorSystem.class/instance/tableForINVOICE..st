tables
tableForINVOICE: aTable
	| personField addressField |
	(aTable createFieldNamed: 'id' type: platform serial) bePrimaryKey.
	aTable createFieldNamed: 'issueDate' type: platform date.
	personField := aTable
		createFieldNamed: 'person_id'
		type: platform integer.
	addressField := aTable
		createFieldNamed: 'address_id'
		type: platform integer.
	aTable
		addForeignKeyFrom: personField
		to: ((self tableNamed: 'PERSON') fieldNamed: 'id').
	aTable
		addForeignKeyFrom: addressField
		to: ((self tableNamed: 'ADDRESS') fieldNamed: 'id')