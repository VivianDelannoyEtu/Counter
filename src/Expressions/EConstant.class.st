Class {
	#name : #EConstant,
	#superclass : #EExpression,
	#instVars : [
		'value'
	],
	#category : #Expressions
}

{ #category : #accessing }
EConstant class >> value: aNumber [
	^ self new value: aNumber 
]

{ #category : #accessing }
EConstant >> evaluate [ 
	^ value
]

{ #category : #accessing }
EConstant >> value: anInteger [
	value := anInteger 
]
