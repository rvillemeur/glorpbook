descriptions
descriptorForInvoice: aDescriptor

	| table |
	table := self tableNamed: 'INVOICE'.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping)
		from: #id
		to: (table fieldNamed: 'id').
	(aDescriptor newMapping: DirectMapping)
		from: #issueDate
		to: (table fieldNamed: 'issueDate').
	(aDescriptor newMapping: OneToOneMapping) attributeName: #person.
	(aDescriptor newMapping: OneToOneMapping) attributeName: #address.
	(aDescriptor newMapping: ToManyMapping)
		attributeName: #items;
		orderBy: [ :each |
			(each getTable: 'INVOICEITEM') getField: 'position' ];
		writeTheOrderField