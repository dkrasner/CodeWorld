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

{ #category : #evaluation }
MathExpression >> evaluate [
	"I evaluate myself and return the value of the expression."
	| newValue operator|
	newValue := (expression first) value.
	operator := nil.
	expression allButFirst do: [
		:each | 
		each = '+'
			ifTrue: [ operator := '+']
			ifFalse:  [ operator = '+'
				ifTrue: [newValue := newValue + each value]
				]
		].
	^newValue.
	



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

{ #category : #evaluating }
MathExpression >> value [
	"I evaluate my own expression."
	^ self evaluate.
	
]
