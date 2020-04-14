Class {
	#name : #MathExpression,
	#superclass : #Object,
	#instVars : [
		'expression'
	],
	#classInstVars : [
		'expression'
	],
	#category : #CodeWorldMain
}

{ #category : #initialize }
MathExpression class >> initialize: anObject [ 
	^self new initializeWithExpression: anObject.
]

{ #category : #'accessing values' }
MathExpression >> expression [
	^ expression
]

{ #category : #initializing }
MathExpression >> initializeWithExpression: anObject [ 
	self initialize.
	expression := anObject.
]
