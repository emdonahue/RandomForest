as yet unclassified
train: records depth: depth
	| branch |
	maxDepth <= depth
		ifTrue: [ ^ self buildLeaf: records. ].
	branch := self buildTree: records.
	branch yes: (self buildYesBranch: branch records: records depth: depth + 1);
		no: (self buildNoBranch: branch records: records depth: depth + 1).
	^ branch.