Class {
	#name : #MathWorld,
	#superclass : #WAComponent,
	#instVars : [
		'viewerComponent'
	],
	#category : #CodeWorldMain
}

{ #category : #testing }
MathWorld class >> canBeRoot [ 
	"comment stating purpose of message"
	^ true.
]

{ #category : #initialization }
MathWorld >> initialize [
	"I initialize everything, most important the super class WAComponent."
	super initialize.
	self viewerComponent: MathWorldViewer new.
]

{ #category : #rendering }
MathWorld >> renderContentOn: html [
	"I am the landing page html code."
	html div 
		class: 'h-100 w-100';
		with: [html text: 'this will be the math world']
]

{ #category : #updating }
MathWorld >> updateRoot: anHtmlRoot [
	"I handle updated the root header files and data"

	super updateRoot: anHtmlRoot.
	anHtmlRoot title: CodeWorldUI applicationName.
	anHtmlRoot stylesheet
		url: CodeWorldLibrary / #mathCss.
	anHtmlRoot link  
		 beShortcutIcon;
		 url: CodeWorldLibrary / #DistilIco.
]

{ #category : #accessing }
MathWorld >> viewerComponent [
	^ viewerComponent
]

{ #category : #accessing }
MathWorld >> viewerComponent: anObject [
	viewerComponent := anObject
]
