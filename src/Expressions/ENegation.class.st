Class {
	#name : #ENegation,
	#superclass : #Object,
	#instVars : [
		'expression'
	],
	#category : #Expressions
}

{ #category : #accessing }
ENegation >> evaluate [ 
	^ (expression evaluate)*(-1)
]

{ #category : #accessing }
ENegation >> expression: anExpression [
	expression := anExpression
]
