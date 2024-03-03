setting up - database
populateTables
<sampleInstance>
	| session |
	session := self session.
	session inUnitOfWorkDo: [
		| lastnames firstnames |
		{ 'Dan'. 'Alan'. 'Adele' }
			with: { 'Ingalls'. 'Kay'. 'Goldberg' }
			do: [ :firstName :lastName |
				| person |
				person := Person new
					          firstName: firstName;
					          lastName: lastName.
				person addresses add: (Address new
						 street: (1 to: 1000) atRandom printString , ' Random Avenue';
						 zip: (1000 to: 9000 by: 100) atRandom;
						 yourself).
				session register: person ] ].
	session inUnitOfWorkDo: [
		| alan |
		alan := session
			        readOneOf: Person
			        where: [ :each | each firstName = 'Alan' ].
		alan addresses add: (Address new
				 street: '1025 Westwood Blv, 2nd Floor, Los Angeles, CA';
				 zip: 90024;
				 yourself) ].
	session logout.
	^session.