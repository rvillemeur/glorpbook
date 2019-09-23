tables
descriptorForInvoiceItem: aDescriptor
	| table |
	table := self tableNamed: 'INVOICEITEM'.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping)
		from: #id
		to: (table fieldNamed: 'id').
	(aDescriptor newMapping: DirectMapping)
		from: #description
		to: (table fieldNamed: 'description').
	(aDescriptor newMapping: DirectMapping)
		from: #price
		to: (table fieldNamed: 'price').
	(aDescriptor newMapping: OneToOneMapping)
		attributeName: #invoice.