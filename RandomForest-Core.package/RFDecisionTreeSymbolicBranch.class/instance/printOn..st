printing
printOn: aStream
	index printOn: aStream.
	aStream nextPutAll: ' = '.
	threshold printOn: aStream.