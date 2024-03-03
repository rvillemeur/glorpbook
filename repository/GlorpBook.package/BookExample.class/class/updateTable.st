accessing - data
updateTable
	| session |
	session := self session.
	session
		inUnitOfWorkDo: [ | person |
			person := session readOneOf: Person where: [ :each | each lastName = 'Locke' ].
			person birthDate: Date today ]