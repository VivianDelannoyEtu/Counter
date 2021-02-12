Class {
	#name : #EBinaryExpression,
	#superclass : #EExpression,
	#instVars : [
		'operator',
		'right',
		'left'
	],
	#category : #Expressions
}

{ #category : #'public access' }
EBinaryExpression >> evaluate [ 
	operator := #+
		ifTrue: [ left evaluate + right evaluate ]
		ifFalse: [ left evaluate * right evaluate ]
]
