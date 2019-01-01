building
buildLeaf: records
	^ records anyOne last isNumber ifTrue: [ self makeNumericLeaf: records ] ifFalse: [ self buildCategoricalLeaf: records ]