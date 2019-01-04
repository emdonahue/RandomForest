building
buildRoot: someRecords
	| minPurity_root |
	minPurity_root := nil.
	1 to: someRecords anyOne size - 1 do: [ :k | 
		| purity_threshold |
		purity_threshold := self buildBranch: someRecords on: k.
		(minPurity_root isNil or: [ purity_threshold first < minPurity_root first. ])
			ifTrue: [ 
				minPurity_root := purity_threshold. ]. ].
	^ minPurity_root second.