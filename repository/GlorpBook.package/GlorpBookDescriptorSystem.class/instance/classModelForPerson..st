model
classModelForPerson: aClassModel

	(aClassModel newAttributeNamed: #id) useDirectAccess: true.
	aClassModel newAttributeNamed: #firstName.
	aClassModel newAttributeNamed: #lastName.
	aClassModel newAttributeNamed: #addresses collectionOf: Address.
	aClassModel newAttributeNamed: #invoices collectionOf: Invoice.
	aClassModel newAttributeNamed: #birthDate