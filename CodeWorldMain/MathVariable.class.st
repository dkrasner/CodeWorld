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
	newValue := value + anObject value.
	^ self class new value: newValue
]

{ #category : #getter }
MathVariable >> getDescription [
	^ description.
]

{ #category : #setter }
MathVariable >> setDescription: aString [ 
	description := aString.
]

{ #category : #getter }
MathVariable >> symbol [
	^ value asString.
]

{ #category : #getter }
MathVariable >> value [
	" this is main value"
	^ value.
]

{ #category : #setter }
MathVariable >> value: anObject [ 
	value := anObject.
]
