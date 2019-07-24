Class {
	#name : #CodeWorldViewer,
	#superclass : #WAComponent,
	#category : #CodeWorldMain
}

{ #category : #rendering }
CodeWorldViewer >> renderContentOn: html [
	"cI render the view html."

	html div 
		class: 'viewer bg-light border border-secondary';
		with: 
			[
			html text: 'i am view 1'.
			html text: ' '.
			html text: 'i am view 2'].
]
