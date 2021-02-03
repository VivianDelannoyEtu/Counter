Class {
	#name : #Scissors,
	#superclass : #Object,
	#category : #RockPaperScissors
}

{ #category : #'as yet unclassified' }
Scissors >> play: anotherTool [
	^ anotherTool playAgainstScissors: self
]

{ #category : #'as yet unclassified' }
Scissors >> playAgainstPaper: aPaper [
	^ #scissors
]

{ #category : #'as yet unclassified' }
Scissors >> playAgainstScissors: aScissors [
	^ #draw
]

{ #category : #'as yet unclassified' }
Scissors >> playAgainstStone: aStone [
	^ #stone
]
