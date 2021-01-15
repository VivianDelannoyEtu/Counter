Class {
	#name : #DieTest,
	#superclass : #TestCase,
	#instVars : [
		'faces'
	],
	#category : #Dice
}

{ #category : #'as yet unclassified' }
DieTest >> testCreationOk [
	self assert: (Die withFaces: 20) faces equals: 20
]

{ #category : #tests }
DieTest >> testInitializeOk [
	self assert: Die new faces equals: 6
]

{ #category : #tests }
DieTest >> testRolling [
	| d |
	d := Die new.
	10 timesRepeat: [ self assert: (d roll between: 1 and: d faces) ]
]
