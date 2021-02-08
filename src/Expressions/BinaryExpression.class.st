Class {
	#name : #BinaryExpression,
	#superclass : #EExpression,
	#instVars : [
		'operator',
		'right',
		'left'
	],
	#category : #Expressions
}

{ #category : #'public access' }
BinaryExpression >> evaluate [ 
	operator := #+
		ifTrue: [ left evaluate + right evaluate ]
		ifFalse: [ left evaluate * right evaluate ]
]
