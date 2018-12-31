splitting
testAttributeThreshold
	| train split |
	train := #(#(a a) #(b b) #(c b) #(a a)).
	split := RFCARTTreeBuilder new attributeThresholdSplitting:  train .
	self assert: split equals: #(1 a).