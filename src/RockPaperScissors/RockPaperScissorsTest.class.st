Class {
	#name : #RockPaperScissorsTest,
	#superclass : #TestCase,
	#category : #RockPaperScissors
}

{ #category : #tests }
RockPaperScissorsTest >> testPaperIsWinning [
	self assert: (Stone new play: Paper new) equals: #paper
]

{ #category : #tests }
RockPaperScissorsTest >> testScissorsIsWinning [
	self assert: (Scissors new play: Paper new) equals: #scissors
]

{ #category : #tests }
RockPaperScissorsTest >> testStoneAgainstStone [
	self assert: (Stone new play: Stone new) equals: #draw
]

{ #category : #tests }
RockPaperScissorsTest >> testStoneIsWinning [
	self assert: (Stone new play: Scissors new) equals: #stone
]
