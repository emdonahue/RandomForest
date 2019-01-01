evaluating
value: aRecord
	^ (self test: aRecord)
		ifTrue: [ yes value: aRecord. ]
		ifFalse: [ no value: aRecord. ].