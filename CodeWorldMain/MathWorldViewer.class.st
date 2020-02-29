Class {
	#name : #MathWorldViewer,
	#superclass : #WAComponent,
	#category : #CodeWorldMain
}

{ #category : #initialization }
MathWorldViewer >> initialize [
	"I initialize everything, most important the super class WAComponent."

	super initialize.
]

{ #category : #rendering }
MathWorldViewer >> renderContentOn: html [
	"I render the mathworld view"
	html div
		with: [html text: 'this will be some math'].

]
