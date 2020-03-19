Class {
	#name : #BaselineOfGeneticProgramming,
	#superclass : #BaselineOf,
	#category : #BaselineOfGeneticProgramming
}

{ #category : #baselines }
BaselineOfGeneticProgramming >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ 
			spec baseline: 'Roassal2' with: [ 
         spec repository: 'github://ObjectProfile/Roassal2/src' ].
			
			"Packages"
			spec
				package: 'GeneticProgramming' with: [ spec requires: 'Roassal2' ].

			"Groups"
			spec
				group: 'default' with: #('GeneticProgramming' 'Roassal2').
		]
]
