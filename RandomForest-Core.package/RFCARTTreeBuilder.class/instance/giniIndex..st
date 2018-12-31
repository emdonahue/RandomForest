as yet unclassified
giniIndex: outcomeBag
	^ 1 - (outcomeBag valuesAndCounts values inject: 0 into: [ :sum :count | count / outcomeBag size ** 2 + sum ]).