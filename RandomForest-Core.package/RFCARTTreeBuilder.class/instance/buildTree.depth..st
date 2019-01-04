building
buildTree: records depth: depth
	| root |
	(maxDepth <= depth or: records size <= minSize)
		ifTrue: [ ^ self buildLeaf: records. ].
	root := self buildRoot: records.
	^ root yes: (self buildTree: (records select: [ :r | root test: r. ]) depth: depth + 1);
		no: (self buildTree: (records reject: [ :r | root test: r. ]) depth: depth + 1).