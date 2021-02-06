Class {
	#name : #DieHandle,
	#superclass : #Object,
	#instVars : [
		'dice'
	],
	#category : #Dice
}

{ #category : #'as yet unclassified' }
DieHandle >> + aDieOrADieHandle [
	^ 	(aDieOrADieHandle class = DieHandle)
		ifTrue: [ | handle |
				handle := self class new.
				self dice do: [ :each | handle addDie: each  ].
				aDieOrADieHandle dice do: [ :each | handle addDie: each ].
				handle ]
		ifFalse: [ | handle |
				handle := self class new.
				self dice do: [ :each | handle addDie: each  ].
				handle addDie: aDieOrADieHandle.
				handle ]
]

{ #category : #adding }
DieHandle >> addDie: aDie [
	dice add: aDie
]

{ #category : #accessing }
DieHandle >> dice [
	^ dice
]

{ #category : #'as yet unclassified' }
DieHandle >> diceNumber [
	^ dice size
]

{ #category : #initialization }
DieHandle >> initialize [ 
	super initialize.
	dice := OrderedCollection new.
]

{ #category : #'as yet unclassified' }
DieHandle >> roll [ 
	| res |
	res := 0.
	dice do: [ :each | res := res + each roll ].
	^ res
]

{ #category : #'as yet unclassified' }
DieHandle >> sumWithDie: aDie [ 
	| handle |
	handle := self class new.
		self dice do: [ :each | handle addDie: each ].
		handle addDie: aDie.
		^ handle
]

{ #category : #'as yet unclassified' }
DieHandle >> sumWithHandle: aDieHandle [
	| handle |
	handle := self class new.
	self dice do: [ :each | handle addDie: each].
 	aDieHandle dice do: [ :each | handle addDie: each ].
	^ handle
]
