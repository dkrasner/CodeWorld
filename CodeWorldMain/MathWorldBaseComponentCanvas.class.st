"
I generate 'canvas' tag html.
"
Class {
	#name : #MathWorldBaseComponentCanvas,
	#superclass : #WAComponent,
	#instVars : [
		'height',
		'width'
	],
	#category : #CodeWorldMain
}

{ #category : #initialization }
MathWorldBaseComponentCanvas >> initialize [
	"I initialize everything, most important the super class WAComponent."
	super initialize.
	height := '100px'.
	width := '200px'.
]

{ #category : #rendering }
MathWorldBaseComponentCanvas >> renderContentOn: html [
	"I am the landing page html code."

	html canvas
		class: 'base';
		attributeAt: 'data-type' put: 'base-element'; 
		height: height;
		width: width;
		
		with: [ html render: 'this is not much' ].
]
