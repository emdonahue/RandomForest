building
buildBranch: records on: index
	^ (records anyOne at: index) isNumber ifTrue: [ self buildNumericBranch: records on: index ]
	ifFalse: [ 
	self buildBranchSymbolic: records on: index. ]