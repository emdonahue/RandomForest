evaluating
testLeaf
	| leaf |
	leaf := RFDecisionTreeLeaf new output: #success.
	self assert: (leaf value: nil) equals: #success