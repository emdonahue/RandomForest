building
buildLeafNumeric: records
	| sum |
	sum := 0.
	records do: [ :r | sum := sum + r last. ].
	^ RFDecisionTreeLeaf new output: sum / records size.