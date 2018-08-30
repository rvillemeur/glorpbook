Experiment based on : [Pharo smalltalk glorp book](https://files.pharo.org/books-pdfs/booklet-Glorp/2017-05-02-Glorp-Spiral.pdf)

```smalltalk
Metacello new
	baseline: 'GlorpBook';
	repository: 'github://rvillemeur/glorpbook/repository';
	load
```

## short glop cheat sheet

Domain model Class: #Person, stored in table PERSON in database.

1. DescriptorSystem subclass
	1. DescriptorSystem subclass: #GlorpBookDescriptorSystem
	1. classModelForYourClass (ex: classModelForPerson)
	Messages use to list attributes of Model
	1. tableForYOURTABLE (ex: tableForPERSON)
	Message describing fields in the table
	1. descriptorForYourClass (ex: descriptorForPerson)
	Link between attributes ofs classModelForXXX and fields of tableForXXX
1. System, session et database accessor.
	1. Create login message to retreive the login
	1. Use the Login you've just created to retreive the accessor
	1. You can then retrive the session session using the message sessionForLogin, which will link login, accessor and session.
		
Once connected to the database, you have to run in pharo workspace "session createTables" to create the table in your new database

Record you work in your session, use the message  >> inUnitOfWorkDo: [ … ]

SQL | Glorp
------------ | -------------
Select * from TABLE | Session read: DomainClass
Select * from TABLE where attributes = 'value' | Session read: DomainClass where: [:each &#124; each attribute = 'value']
Select * from TABLE where attributes like 'value%' | Session read: DomainClass where: [:each &#124; each attribute similarTo: 'value']
Update table TABLE	Set attribute = 'value' Where condition = 'value2' | Instance := session readOneOf: DomainClass Where: [ :each &#124; each condition = 'value2' ] Instance attribute: value.
Delete from TABLE Where condition = 'value' | Instance := session readOneOf: DomainClass Where: [ :each &#124; each condition = 'value2' ] Instance delete: value. Or (for multiple deletion) 	Session delete: DomainClass 	Where: [ :each &#124; each condition = 'value2' ]
Select * from TABLE where attributes = 'value' Order by | session read: DomainClass where: [:each &#124; each attribute = 'value'];orderBy: [:each &#124; each attribute = 'value']
Select * from TABLE where attributes = 'value' Group by | session read: DomainClass where: [:each &#124; each attribute = 'value'];groupBy: [:each &#124; each attribute = 'value']
	

Each of your persisted objects should have an instance of GlorpClassModel in the descriptor system containing all the attributes of your class.

## Defining relation between classes 

attribute | relation
--------- | -----------
newAttributeNamed: #email | Used to define simple scalar/literal values 	such as Numbers, Strings, Dates, etc.
newAttributeNamed: #address type: Address | Used to define 1:1 (one to one) relations with other objects of your domain model.
newAttributeNamed: #invoices collectionOf: Invoice | Used to define 1:n (one to many) and n:m (many to many) relations of your class model with other models.
newAttributeNamed: #invoices collection: collectionClass of: Invoice | Similar as the one above for 1:n and n:m relations, but you can define what kind of Collection is going to be used.
newAttributeNamed: #counters dictionaryFrom: keyClass to: valueClass | Used to define an attribute that is a Dictionary where the key is key-Class and its values are instances of valueClass.
