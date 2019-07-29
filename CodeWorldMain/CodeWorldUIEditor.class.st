Class {
	#name : #CodeWorldUIEditor,
	#superclass : #WAComponent,
	#category : #CodeWorldMain
}

{ #category : #rendering }
CodeWorldUIEditor >> renderContentOn: html [
	"I render the content for the main code editor"

	html div 
		with: [
			html div
				class: 'header';
				with: [html text: 'this will be the header'].				
			html div
				id: 'summernote'.
			]
]
