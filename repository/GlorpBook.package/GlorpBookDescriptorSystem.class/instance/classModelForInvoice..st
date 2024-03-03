model
classModelForInvoice: aClassModel
	(aClassModel newAttributeNamed: #id) useDirectAccess: true.
	aClassModel newAttributeNamed: #issueDate.
	aClassModel newAttributeNamed: #person type: Person.
	aClassModel newAttributeNamed: #address type: Address.
	aClassModel newAttributeNamed: #items collectionOf: InvoiceItem