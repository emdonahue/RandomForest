as yet unclassified
purityOfThreshold: aThreshold splitting: theRecords on: aKey
	| equal notEqual |
	equal := Bag new.
	notEqual := Bag new.
	theRecords
		do: [ :r | 
			((r at: aKey) = aThreshold
				ifTrue: equal
				ifFalse: notEqual) add: r last ].
		^ ((self giniIndex: equal ) * (equal size / theRecords size)) + ((self giniIndex: notEqual  ) * (notEqual size / theRecords size))