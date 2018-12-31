as yet unclassified
scoreSplit: aSplit on: aKey
	^ (self score: ((aSplit at: true) collect: [ :r | r at: aKey ])) + (self score: ((aSplit at: false)  collect: [ :r | r at: aKey ])).