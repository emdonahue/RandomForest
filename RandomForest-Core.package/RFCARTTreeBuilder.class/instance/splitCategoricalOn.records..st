as yet unclassified
splitCategoricalOn: aKey records: theRecords
	| values minPurity bestSplit |
	minPurity := nil.
	bestSplit := nil.
	values := (theRecords collect: [ :r | r at: aKey ]) asSet asArray.	"For each unique value that we can split on,"
	values
		do: [ :v | 
			| purity split |
			split := theRecords groupedBy: [ :r | (r at: aKey) = v ].
			purity := self scoreSplit: split on: aKey.
			(minPurity isNil or: [ purity < minPurity ])
				ifTrue: [ minPurity := purity.
					bestSplit := v ] ].
	^ {minPurity.
	bestSplit.}.