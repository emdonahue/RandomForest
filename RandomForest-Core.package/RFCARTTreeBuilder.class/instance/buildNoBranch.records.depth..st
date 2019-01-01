building
buildNoBranch: branch records: records depth: depth
	^ self train: (records reject: [ :r | branch test: r. ]) depth: depth.