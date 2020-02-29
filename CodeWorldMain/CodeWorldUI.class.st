Class {
	#name : #CodeWorldUI,
	#superclass : #WAComponent,
	#instVars : [
		'viewerComponent'
	],
	#category : #CodeWorldMain
}

{ #category : #'accessing values' }
CodeWorldUI class >> applicationName [
	"I am the name of the aplication"
	^ 'CodeWorld'
]

{ #category : #testing }
CodeWorldUI class >> canBeRoot [
	"I let the server know that i am a root UI component."
	^ true
]

{ #category : #initialization }
CodeWorldUI >> initialize [
	"I initialize everything, most important the super class WAComponent."

	super initialize.
	self viewerComponent: CodeWorldViewer new.
]

{ #category : #rendering }
CodeWorldUI >> renderContentOn: html [
	"I am the landing page html code."
	html div 
		class: 'h-100 w-100';
		with: [
			html div 
					class: 'main';
				with: self viewerComponent.
				]
]

{ #category : #updating }
CodeWorldUI >> updateRoot: anHtmlRoot [
	"I handle updated the root header files and data"

	super updateRoot: anHtmlRoot.
	anHtmlRoot title: CodeWorldUI applicationName.
	anHtmlRoot stylesheet
		url: CodeWorldLibrary / #mainCss.
	anHtmlRoot link  
		 beShortcutIcon;
		 url: CodeWorldLibrary / #DistilIco.
	anHtmlRoot javascript
		url: 'https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js'.
	anHtmlRoot javascript 
		url: 'https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js'.
	anHtmlRoot stylesheet
		url: 'https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'.
	anHtmlRoot javascript
		 url: 'https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js'.
	anHtmlRoot stylesheet  
		url: 'http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.css'.
	anHtmlRoot javascript 
		url: 'http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.js'.
	anHtmlRoot javascript
		url: CodeWorldLibrary / #mainJs.
]

{ #category : #accessing }
CodeWorldUI >> viewerComponent [
	^ viewerComponent.
]

{ #category : #accessing }
CodeWorldUI >> viewerComponent: anObject [
	viewerComponent := anObject
]
