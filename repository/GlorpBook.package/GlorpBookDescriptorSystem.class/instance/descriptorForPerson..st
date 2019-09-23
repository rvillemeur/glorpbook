tables
descriptorForPerson: aDescriptor
	| table linkTable |
	table := self tableNamed: 'PERSON'.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping)
		from: #id
		to: (table fieldNamed: 'id').
	(aDescriptor newMapping: DirectMapping)
		from: #firstName
		to: (table fieldNamed: 'firstName').
	(aDescriptor newMapping: DirectMapping)
		from: #lastName
		to: (table fieldNamed: 'lastName').
	(aDescriptor newMapping: ToManyMapping)
		attributeName: #invoices;
		orderBy: [:each |
			(each getTable: 'INVOICE') getField: 'issueDate'].

	linkTable := self tableNamed: 'PERSON_ON_ADDRESS'.
	(aDescriptor newMapping: ManyToManyMapping)
		attributeName: #addresses;
		referenceClass: Address;
		beExclusive;
		join: (Join
			from: (table fieldNamed: 'id')
			to: (linkTable fieldNamed: 'person_id')).