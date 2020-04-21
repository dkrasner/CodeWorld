"
Add a comment!
"
Class {
	#name : #MathWorldBaseComponent,
	#superclass : #WAComponent,
	#instVars : [
		'viewerComponent',
		'content',
		'top',
		'left',
		'style'
	],
	#category : #CodeWorldMain
}

{ #category : #initialization }
MathWorldBaseComponent class >> initialize: anObject [ 
	^self new initializeWithContent: anObject.
]

{ #category : #initialization }
MathWorldBaseComponent >> initialize [
	"I initialize everything, most important the super class WAComponent."
	super initialize.
]

{ #category : #initialization }
MathWorldBaseComponent >> initializeWithContent: anObject [
	self initialize.
	content := anObject.
]

{ #category : #accessing }
MathWorldBaseComponent >> left: strObject [
	left := strObject.
]

{ #category : #rendering }
MathWorldBaseComponent >> renderContentOn: html [
	"I am the landing page html code."

	html div
		class: 'base';
		attributeAt: 'data-type' put: 'base-element'; 
		style: style;
		with: [ html render: content ]. 
]

{ #category : #hooks }
MathWorldBaseComponent >> style [
	^ style
]

{ #category : #accessing }
MathWorldBaseComponent >> style: strObject [
	"I style the component"
	style := strObject.
]

{ #category : #accessing }
MathWorldBaseComponent >> top: strObject [
	top := strObject.
]
