tables
tableForINVOICEITEM: aTable
	| invoiceField |
	(aTable createFieldNamed: 'id' type: platform serial) bePrimaryKey.
	invoiceField := aTable createFieldNamed: 'invoice_id' type: platform integer.
	aTable createFieldNamed: 'description' type: (platform varchar: 150).
	aTable createFieldNamed: 'price' type: platform decimal.
	aTable createFieldNamed: 'position' type: platform integer.
	aTable
		addForeignKeyFrom: invoiceField
		to: ((self tableNamed: 'INVOICE') fieldNamed: 'id').