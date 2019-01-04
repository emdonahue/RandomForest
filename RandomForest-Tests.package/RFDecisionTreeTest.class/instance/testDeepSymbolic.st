splitting
testDeepSymbolic
	| train tree |
	train := #(#(a a) #(b b) #(c c) #(d d)).
	tree := RFCARTTreeBuilder new maxDepth: 3;
		minSize: 1;
		train: train.
	self assert: (tree value: #(a)) equals: #a.
	self assert: (tree value: #(b)) equals: #b.
	self assert: (tree value: #(c)) equals: #c.
	self assert: (tree value: #(d)) equals: #d.