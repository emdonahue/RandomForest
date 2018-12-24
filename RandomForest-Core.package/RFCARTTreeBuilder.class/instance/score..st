as yet unclassified
score: featureTokens
	^ 1 - (featureTokens asSet asArray collect: [ :type | (featureTokens count: [ :token | token = type ]) / featureTokens size ** 2 ]) sum.