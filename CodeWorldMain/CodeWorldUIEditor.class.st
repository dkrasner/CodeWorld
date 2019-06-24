Class {
	#name : #CodeWorldUIEditor,
	#superclass : #WAComponent,
	#category : #CodeWorldMain
}

{ #category : #rendering }
CodeWorldUIEditor >> renderContentOn: html [
	"I render the content for the main code editor"

	html div 
		with: [html text: 'i am going to be an editor'].
]
