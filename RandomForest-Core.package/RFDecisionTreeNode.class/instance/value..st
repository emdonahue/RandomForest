accessing
value: aRow
	^ (self test: (aRow at: index))
		ifTrue: [ yes value: aRow ]
		ifFalse: [ no value: aRow ].