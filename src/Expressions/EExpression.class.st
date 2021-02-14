Class {
	#name : #EExpression,
	#superclass : #Object,
	#category : #Expressions
}

{ #category : #accessing }
EExpression >> evaluateWith: aDictionary [ 
	^ self evaluate
]

{ #category : #accessing }
EExpression >> negated [
	^ ENegation new expression: self
]
