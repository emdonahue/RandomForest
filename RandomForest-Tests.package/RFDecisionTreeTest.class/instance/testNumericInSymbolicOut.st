splitting
testNumericInSymbolicOut
	| train tree |
	train := #(#(1 a) #(2 a) #(3 b) #(4 b)).
	tree := RFCARTTreeBuilder new maxDepth: 1;
		train: train.
	self assert: (tree value: #(0)) equals: #a.
	self assert: (tree value: #(2.4)) equals: #a.
	self assert: (tree value: #(5)) equals: #b.
	self assert: (tree value: #(2.6)) equals: #b.