Class {
	#name : #Paper,
	#superclass : #Object,
	#category : #RockPaperScissors
}

{ #category : #method }
Paper >> play: anotherTool [
	^ anotherTool playAgainstPaper: self
]

{ #category : #method }
Paper >> playAgainstPaper: aPpaer [
	^ #draw
]

{ #category : #method }
Paper >> playAgainstScissors: aScissors [
	^ #scissors
]

{ #category : #method }
Paper >> playAgainstStone: aStone [
	^ #paper
]
