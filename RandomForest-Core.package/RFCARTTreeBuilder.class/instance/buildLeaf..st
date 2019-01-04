building
buildLeaf: records
	^ records anyOne last isNumber ifTrue: [ self buildLeafNumeric: records ] ifFalse: [ self buildLeafSymbolic: records ]