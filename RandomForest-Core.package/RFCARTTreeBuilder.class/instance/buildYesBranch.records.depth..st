building
buildYesBranch: branch records: records depth: depth 
	^ self train: (records select: [ :r | branch test: r ]) depth: depth