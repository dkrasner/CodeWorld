Class {
	#name : #CodeWorldUI,
	#superclass : #WAComponent,
	#instVars : [
		'editorComponent'
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
	^ CodeWorldUIEditor.
]

{ #category : #accessing }
CodeWorldUI >> editorComponent: anObject [
	editorComponent := anObject
]

{ #category : #rendering }
CodeWorldUI >> renderContentOn: html [
	"I am the landing page html code."
	html div 
		class: '';
		style: 'color: blue';
		with: [html text: self editorComponent class].
]

{ #category : #updating }
CodeWorldUI >> updateRoot: anHtmlRoot [
	"I handle updated the root header files and data"

	super updateRoot: anHtmlRoot.
	anHtmlRoot title: CodeWorldUI applicationName.
]
