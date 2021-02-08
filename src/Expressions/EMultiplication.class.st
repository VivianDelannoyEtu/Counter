Class {
	#name : #EMultiplication,
	#superclass : #EExpression,
	#instVars : [
		'right',
		'left'
	],
	#category : #Expressions
}

{ #category : #'instance creation' }
EMultiplication class >> left: anExp right: anExp2 [
	^ self new left: anExp ; right: anExp2 
]

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
