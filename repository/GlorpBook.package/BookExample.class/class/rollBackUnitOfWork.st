accessing - data
rollBackUnitOfWork

	| session person |
	session := self session.
	session inUnitOfWorkDo: [
		person := session
			          readOneOf: Person
			          where: [ :each | each lastName = 'Lucas' ].
		person lastName: 'Wayne'.
		Error signal: 'This error will abort the Unit Of Work.' ]