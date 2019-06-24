Class {
	#name : #CodeWorldUI,
	#superclass : #WAComponent,
	#instVars : [
		'editorComponent',
		'viewerComponent'
	],
	#category : #CodeWorldMain
}

{ #category : #'as yet unclassified' }
CodeWorldUI class >> applicationName [
	"I am the name of the aplication"
	^ 'CodeWorld'
]

{ #category : #testing }
CodeWorldUI class >> canBeRoot [
	"I let the server know that i am a root UI component."
	
	^ true
]

{ #category : #accessing }
CodeWorldUI >> editorComponent [
	^ editorComponent.
]

{ #category : #accessing }
CodeWorldUI >> editorComponent: anObject [
	editorComponent := anObject
]

{ #category : #initialization }
CodeWorldUI >> initialize [
	"I initialize everything, most important the super class WAComponent."

	super initialize.
	self editorComponent: CodeWorldUIEditor new.
	self viewerComponent: CodeWorldViewer new.
]

{ #category : #rendering }
CodeWorldUI >> renderContentOn: html [
	"I am the landing page html code."
	html div 
		class: '';
		style: 'color: blue';
		with: [
			html div 
				with: self editorComponent.
			html div 
				with: self viewerComponent.
				]
]

{ #category : #updating }
CodeWorldUI >> updateRoot: anHtmlRoot [
	"I handle updated the root header files and data"

	super updateRoot: anHtmlRoot.
	anHtmlRoot title: CodeWorldUI applicationName.
]

{ #category : #accessing }
CodeWorldUI >> viewerComponent [
	^ viewerComponent.
]

{ #category : #accessing }
CodeWorldUI >> viewerComponent: anObject [
	viewerComponent := anObject
]
