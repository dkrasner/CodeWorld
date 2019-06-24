Class {
	#name : #CodeWorldUIEditor,
	#superclass : #WAComponent,
	#category : #CodeWorldMain
}

{ #category : #rendering }
CodeWorldUIEditor >> renderContentOn: html [
	"I render the content for the main code editor"

	html text: 'i am a code editor or more'.
]
