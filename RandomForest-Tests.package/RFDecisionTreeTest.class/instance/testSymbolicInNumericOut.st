splitting
testSymbolicInNumericOut
	| train tree |
	train := #(#(a 1) #(a 2) #(b 3) #(b 4)).
	tree := RFCARTTreeBuilder new maxDepth: 1; minSize: 1;
		train: train.
	self assert: (tree value: #(a)) equals: 1.5.
	self assert: (tree value: #(b)) equals: 3.5.