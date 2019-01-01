building
buildCategoricalLeaf: records
	| bestOutput maxCount votes |
	bestOutput := nil.
	maxCount := 0.
	votes := records
		inject: Bag new
		into: [ :v :r | 
			v add: r last;
				yourself. ].
	votes 
		doWithOccurrences: [ :output :count | 
			maxCount < count
				ifTrue: [ maxCount := count.
					bestOutput := output. ]. ].
	^ RFDecisionTreeLeaf new output: bestOutput.