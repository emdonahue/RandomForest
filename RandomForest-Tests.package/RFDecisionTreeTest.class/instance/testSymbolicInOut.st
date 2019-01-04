splitting
testSymbolicInOut
	| train tree |
	train := #(#(a a) #(b b)).
	tree := RFCARTTreeBuilder new maxDepth: 1; minSize: 1;
		train: train.
	self assert: (tree value: #(a)) equals: #a.
	self assert: (tree value: #(b)) equals: #b.