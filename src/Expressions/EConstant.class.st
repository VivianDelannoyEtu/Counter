Class {
	#name : #EConstant,
	#superclass : #EExpression,
	#instVars : [
		'value'
	],
	#category : #Expressions
}

{ #category : #accessing }
EConstant class >> constant3 [
	<sampleInstance>
	^ self new value: 3
]

{ #category : #accessing }
EConstant class >> constant5 [
	<sampleInstance>
	^ self new value: 5
]

{ #category : #accessing }
EConstant class >> value: aNumber [
	^ self new value: aNumber 
]

{ #category : #accessing }
EConstant >> evaluate [ 
	^ value
]

{ #category : #accessing }
EConstant >> printOn: aStream [
	aStream nextPutAll: value printString 
]

{ #category : #accessing }
EConstant >> value: anInteger [
	value := anInteger 
]
