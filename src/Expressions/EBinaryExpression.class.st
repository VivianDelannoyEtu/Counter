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

{ #category : #'public access' }
EBinaryExpression >> operatorString [
	^ self subclassResponsibility 
]

{ #category : #'public access' }
EBinaryExpression >> printOn: aStream [
	aStream nextPutAll: '( '.
	left printOn: aStream.
	aStream nextPutAll: self operatorString.
	right printOn: aStream.
	aStream nextPutAll: ' )'.
]
