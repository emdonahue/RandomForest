splitting
testSplitRecordsOnCategorical
	| train split |
	train := #(#(a a) #(b b) #(c b) #(a a)).
	split := RFCARTTreeBuilder new categoricalThresholdSplitting: train on:  1.
	self assert: split first equals: 0.
	self assert: split second equals: #a.