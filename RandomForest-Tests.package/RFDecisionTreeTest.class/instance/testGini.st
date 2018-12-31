tests
testGini
	| cart |
	cart := RFCARTTreeBuilder new.
	self assert: (cart score: #(a) asBag) equals: 0.
	self assert: (cart score: #(a a) asBag) equals: 0.
	self assert: (cart score: #(a a a) asBag) equals: 0.
	self assert: (cart score: #(a b) asBag) equals: 0.5.