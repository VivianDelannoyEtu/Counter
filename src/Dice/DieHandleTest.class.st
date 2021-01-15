Class {
	#name : #DieHandleTest,
	#superclass : #TestCase,
	#category : #Dice
}

{ #category : #tests }
DieHandleTest >> testCreationAdding [
	| handle |
	handle := DieHandle new.
	handle addDie: (Die withFaces: 6).
	self assert: handle diceNumber equals: 1.
	handle addDie: (Die withFaces: 6).
	self assert: handle diceNumber equals: 2.
]

{ #category : #tests }
DieHandleTest >> testRoll [
	| handle sum |
	handle := DieHandle new
		addDie: (Die withFaces: 6);
		addDie: (Die withFaces: 10).
	10 timesRepeat: [ self assert: (handle roll between: 2 and: 16) ]
]
