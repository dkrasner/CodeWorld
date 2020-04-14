"
Add a comment!
"
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
	"I can be a UI Seaside root component"
	^ true.
]

{ #category : #initialization }
MathWorld >> initialize [
	"I initialize everything, most important the super class WAComponent."
	super initialize.
]

{ #category : #rendering }
MathWorld >> renderContentOn: html [
	"I am the landing page html code."
	html div 
		with: [html text: 'this is not much'].
]

{ #category : #rendering }
MathWorld >> style [ 
	^ 'font-size: 100px;'
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
