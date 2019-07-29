Class {
	#name : #CodeWorldViewer,
	#superclass : #WAComponent,
	#instVars : [
		'editorComponent'
	],
	#category : #CodeWorldMain
}

{ #category : #accessing }
CodeWorldViewer >> editorComponent [
	^ editorComponent
]

{ #category : #accessing }
CodeWorldViewer >> editorComponent: anObject [
	editorComponent := anObject
]

{ #category : #initialization }
CodeWorldViewer >> initialize [
	"I initialize everything, most important the super class WAComponent."

	super initialize.
	self editorComponent: CodeWorldUIEditor new.
	
]

{ #category : #rendering }
CodeWorldViewer >> renderContentOn: html [
	"cI render the view html."

	html div 
		class: 'viewer bg-light border border-secondary';
		with: 
			[
			html div 
				class: 'editor';
				with: self editorComponent.
			html text: 'i am view 2'].
]
