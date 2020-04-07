Class {
	#name : #MathObject,
	#superclass : #Object,
	#instVars : [
		'algebraic'
	],
	#category : #CodeWorldMain
}

{ #category : #getter }
MathObject >> getAlgebraic [ 
	"comment stating purpose of message"
	^ algebraic.
]

{ #category : #setter }
MathObject >> setAlgebraic: aString [ 
	algebraic := aString.
]
