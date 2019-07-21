Class {
	#name : #CodeWorldViewer,
	#superclass : #WAComponent,
	#category : #CodeWorldMain
}

{ #category : #rendering }
CodeWorldViewer >> renderContentOn: html [
	"cI render the view html."

	html div 
		class: 'myclass';
		with: 
			[html text:'i am a viewer'].
]
