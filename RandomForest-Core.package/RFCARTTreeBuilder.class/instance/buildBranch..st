building
buildBranch: someRecords
	| bestSplit minPurity_threshold |
	bestSplit := nil.
	minPurity_threshold := nil.
	(1 to: someRecords anyOne size - 1)
		do: [ :k | 
			| purity_threshold |
			purity_threshold := self categoricalThresholdSplitting: someRecords on: k.
			(minPurity_threshold isNil or: [ purity_threshold first < minPurity_threshold first. ])
				ifTrue: [ bestSplit := k.
					minPurity_threshold := purity_threshold. ]. ].
	^ RFDecisionTreeBranch new index: bestSplit; threshold: 
	minPurity_threshold second.