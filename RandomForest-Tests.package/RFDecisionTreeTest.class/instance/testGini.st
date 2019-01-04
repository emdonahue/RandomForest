scoring
testGini
	| cart |
	cart := RFCARTTreeBuilder new.
	self assert: (cart giniIndex: #(a) asBag) equals: 0.
	self assert: (cart giniIndex: #(a a) asBag) equals: 0.
	self assert: (cart giniIndex: #(a a a) asBag) equals: 0.
	self assert: (cart giniIndex: #(a b) asBag) equals: 0.5.