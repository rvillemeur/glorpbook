accessing - data
deleteRecord
	| session |
	session := self session.
	session
		inUnitOfWorkDo: [ | person |
			person := session readOneOf: Person where: [ :each | each lastName = 'Locke' ].
			session delete: person ]