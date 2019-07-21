Class {
	#name : #CodeWorldUIEditor,
	#superclass : #WAComponent,
	#category : #CodeWorldMain
}

{ #category : #rendering }
CodeWorldUIEditor >> renderContentOn: html [
	"I render the content for the main code editor"

	html  
	 textInput
]

{ #category : #rendering }
CodeWorldUIEditor >> style [ 
	^ 'height: 300px; color: red; text-size: 10px'
]
