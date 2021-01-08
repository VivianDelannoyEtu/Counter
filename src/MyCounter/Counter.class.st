Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #MyCounter
}

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
