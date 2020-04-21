"
I am the main UI/web component for the MathWorld application.
"
Class {
	#name : #MathWorldUI,
	#superclass : #WAComponent,
	#instVars : [
		'mathCanvas',
		'mathTextOne',
		'mathTextTwo'
	],
	#category : #CodeWorldMain
}

{ #category : #attributes }
MathWorldUI class >> applicationName [
	^'Math Application'.
]

{ #category : #testing }
MathWorldUI class >> canBeRoot [ 
	"I am the root of the application."
	^ true.
]

{ #category : #hooks }
MathWorldUI >> children [
	"I return all my children."
	^ Array with: nil.
]

{ #category : #initialization }
MathWorldUI >> initialize [
	"I initialize everything, most important the super class WAComponent."
	super initialize.
	mathTextOne := MathWorldBaseComponent initialize: 'this is text one'.
	mathTextOne style: 'left: 15px'.
	mathTextTwo := MathWorldBaseComponent initialize: 'this is text two'.
	mathTextTwo style: 'right: 15px'.
	mathCanvas := MathWorldBaseComponentCanvas new.
]

{ #category : #rendering }
MathWorldUI >> renderContentOn: html [
	"I hanld document level rendering of the component."
	html div
		class: 'main';
		id: 'main';
		with: [ 
			html render: mathTextOne.
			html render: mathTextTwo
			]
]

{ #category : #updating }
MathWorldUI >> updateRoot: anHtmlRoot [
	"I handle updated the root header files and data"
	super updateRoot: anHtmlRoot.
	anHtmlRoot title: self class applicationName.
	anHtmlRoot javascript
		url: 'https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js'.
	anHtmlRoot stylesheet
		url: CodeWorldLibrary / #mathCss.
	anHtmlRoot javascript 
		url: CodeWorldLibrary / #mathJs.
	anHtmlRoot link  
		 beShortcutIcon;
		 url: CodeWorldLibrary / #DistilIco.
]
