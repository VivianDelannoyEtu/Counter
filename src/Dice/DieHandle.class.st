Class {
	#name : #DieHandle,
	#superclass : #Object,
	#instVars : [
		'dices'
	],
	#category : #Dice
}

{ #category : #adding }
DieHandle >> addDie: aDie [
	dices add: aDie
]

{ #category : #'as yet unclassified' }
DieHandle >> diceNumber [
	^ dices size
]

{ #category : #initialization }
DieHandle >> initialize [ 
	super initialize.
	dices := OrderedCollection new.
]

{ #category : #'as yet unclassified' }
DieHandle >> roll [ 
	| collection sum |
	collection := dices collect: [ :each | each roll  ].
	sum := collection inject: 0 into: [ :somme :each | somme + each ].
	^ sum
]
