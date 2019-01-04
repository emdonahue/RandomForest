splitting
testSymbolicOut
	| train leaf |
	train := #(#(a a) #(b b) #(c c) #(a a)).
	leaf := RFCARTTreeBuilder new maxDepth: 0; minSize: 1;
		train: train.
	self assert: (leaf value: #(nil)) equals: #a.