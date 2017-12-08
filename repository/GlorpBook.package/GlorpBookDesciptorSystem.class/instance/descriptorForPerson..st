as yet unclassified
descriptorForPerson: aDescriptor
	| table |
	table := self tableNamed: 'PERSON'.
	aDescriptor table: table.
	aDescriptor directMappingFor: #id.
	(aDescriptor newMapping: DirectMapping) from: #firstName to: (table fieldNamed: 'firstName').
	(aDescriptor newMapping: DirectMapping) from: #lastName to: (table fieldNamed: 'lastName').
	(aDescriptor newMapping: DirectMapping) from: #birthDate to: (table fieldNamed: 'birthDate')