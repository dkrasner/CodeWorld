Class {
	#name : #MathVariable,
	#superclass : #Object,
	#instVars : [
		'value',
		'description'
	],
	#category : #CodeWorldMain
}

{ #category : #operators }
MathVariable >> + anObject [
	| newValue |
	newValue := (anObject isMemberOf: self class)
		ifTrue: [ value + anObject getValue ]
		ifFalse: [ value + anObject ].
	^ self class new setValue: newValue
]

{ #category : #getter }
MathVariable >> getDescription [
	^ description.
]

{ #category : #getter }
MathVariable >> getValue [
	" this is main value"
	^ value.
]

{ #category : #setter }
MathVariable >> setDescription: aString [ 
	description := aString.
]

{ #category : #setter }
MathVariable >> setValue: anObject [ 
	value := anObject.
]

{ #category : #getter }
MathVariable >> symbol [
	^ value asString.
]
