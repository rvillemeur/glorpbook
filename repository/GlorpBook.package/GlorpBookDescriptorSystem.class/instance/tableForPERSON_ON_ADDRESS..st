tables
tableForPERSON_ON_ADDRESS: aTable
	| personField addressField |
	personField := aTable
		createFieldNamed: 'person_id'
		type: platform integer.
	addressField := aTable
		createFieldNamed: 'address_id'
		type: platform integer.
	personField bePrimaryKey.
	addressField bePrimaryKey.
	aTable
		addForeignKeyFrom: personField
		to: ((self tableNamed: 'PERSON') fieldNamed: 'id').
	aTable
		addForeignKeyFrom: addressField
		to: ((self tableNamed: 'ADDRESS') fieldNamed: 'id').