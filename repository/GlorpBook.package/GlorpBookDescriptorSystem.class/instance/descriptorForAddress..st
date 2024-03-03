descriptions
descriptorForAddress: aDescriptor
	| table |
	table := self tableNamed: 'ADDRESS'.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping)
		from: #id
		to: (table fieldNamed: 'id').
	(aDescriptor newMapping: DirectMapping)
		from: #street
		to: (table fieldNamed: 'street').
	(aDescriptor newMapping: DirectMapping)
		from: #city
		to: (table fieldNamed: 'zip').