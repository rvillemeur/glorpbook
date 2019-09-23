as yet unclassified
classModelForInvoiceItem: aClassModel
	(aClassModel newAttributeNamed: #id) useDirectAccess: true.
	aClassModel newAttributeNamed: #invoice type: Invoice.
	aClassModel newAttributeNamed: #description.
	aClassModel newAttributeNamed: #price