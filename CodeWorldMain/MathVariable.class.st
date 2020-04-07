Class {
	#name : #MathVariable,
	#superclass : #Object,
	#instVars : [
		'value',
		'description'
	],
	#category : #CodeWorldMain
}

{ #category : #getter }
MathVariable >> getDescription [
	^ description.
]

{ #category : #getter }
MathVariable >> getValue [
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
