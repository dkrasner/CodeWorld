"
Add a comment!
"
Class {
	#name : #MathWorldBaseComponent,
	#superclass : #WAComponent,
	#instVars : [
		'viewerComponent'
	],
	#category : #CodeWorldMain
}

{ #category : #initialization }
MathWorldBaseComponent >> initialize [
	"I initialize everything, most important the super class WAComponent."
	super initialize.
]

{ #category : #rendering }
MathWorldBaseComponent >> renderContentOn: html [
	"I am the landing page html code."

	html span
		class: 'base';
		id: 'baseComponent';
		with: [ html text: 'this is not much' ]
]
