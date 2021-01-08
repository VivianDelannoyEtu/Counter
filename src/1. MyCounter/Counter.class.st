Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #MyCounter
}

{ #category : #accessing }
Counter class >> startingAt: anInteger [
^ self new count: anInteger 
]

{ #category : #accessing }
Counter >> count [
	^ count
]

{ #category : #accessing }
Counter >> count: anInteger [
	count := anInteger
]

{ #category : #'as yet unclassified' }
Counter >> decrement [
	count := count - 1.
]

{ #category : #'as yet unclassified' }
Counter >> decrement2 [
	count := count - 2.
]

{ #category : #'as yet unclassified' }
Counter >> increment [
	count := count + 1
]

{ #category : #initialization }
Counter >> initialize [

	super initialize.
	count := 0
]

{ #category : #initialization }
Counter >> printOn: aStream [

	super printOn: aStream.
	aStream nextPutAll: ' withValue: ' , count printString.
	aStream cr
]
