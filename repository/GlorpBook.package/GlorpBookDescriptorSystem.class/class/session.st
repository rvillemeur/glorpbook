accessing
session
| session| 
	session := GlorpBookDescriptorSystem sessionForLogin: self login.
	^session login.