Class {
	#name : #EMultiplication,
	#superclass : #Object,
	#instVars : [
		'right',
		'left'
	],
	#category : #Expressions
}

{ #category : #accessing }
EMultiplication >> evaluate [ 
	^ left evaluate * right evaluate
]

{ #category : #accessing }
EMultiplication >> left: anExpression [ 
	left := anExpression 
]

{ #category : #accessing }
EMultiplication >> right: anExpression [ 
	right := anExpression 
]
