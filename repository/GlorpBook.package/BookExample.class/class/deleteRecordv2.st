accessing - data
deleteRecordv2
	| session |
	session := self session.
	session
		inUnitOfWorkDo: [ session delete: Person where: [ :each | each lastName = 'Locke' ] ]