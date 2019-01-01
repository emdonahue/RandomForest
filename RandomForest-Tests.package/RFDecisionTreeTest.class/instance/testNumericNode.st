tests
testNumericNode
	| node |
	node := RFDecisionTreeNumericBranch new
		yes: (RFDecisionTreeLeaf new output: true);
		no: (RFDecisionTreeLeaf new output: false);
		index: 1;
		threshold: 0.
	self assert: (node value: #(-1)).
	self assert: (node value: #(0)).
	self deny: (node value: #(1)).