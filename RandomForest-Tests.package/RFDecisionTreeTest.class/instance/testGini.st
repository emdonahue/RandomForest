tests
testGini
	| cart |
	cart := RFCARTTreeBuilder new.
	self assert: (cart score: #(1)) equals: 0.
	self assert: (cart score: #(1 1)) equals: 0.
	self assert: (cart score: #(1 1 1)) equals: 0.
	self assert: (cart score: #(1 2)) equals: 0.5.