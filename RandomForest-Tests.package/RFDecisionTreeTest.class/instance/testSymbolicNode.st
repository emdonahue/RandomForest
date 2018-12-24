tests
testSymbolicNode
	| node |
	node := RFDecisionTreeSymbolicNode new yes: (RFDecisionTreeLeaf new output: true); no: (RFDecisionTreeLeaf new output: false); index: 1; threshold: #success.
	self assert: (node value: #(success)).
	self deny: (node value: #(failure))