building
buildBranchSymbolic: theRecords on: aKey
	| minPurity bestThreshold |
	minPurity := nil.
	bestThreshold := nil.
	(theRecords collect: [ :r | r at: aKey. ]) asSet
		do: [ :t | 
			| purity |
			purity := self purityOfThreshold: t splitting: theRecords on: aKey.
			(minPurity isNil or: [ purity < minPurity. ])
				ifTrue: [ minPurity := purity.
					bestThreshold := t. ]. ].
	^ {minPurity.
	(RFDecisionTreeSymbolicBranch new index: aKey;
		threshold: bestThreshold).}.