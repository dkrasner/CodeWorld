Class {
	#name : #CodeWorldLibrary,
	#superclass : #WAFileLibrary,
	#instVars : [
		'mainCss'
	],
	#category : #CodeWorldMain
}

{ #category : #accessing }
CodeWorldLibrary >> mainCss [
	^ '
.myclass { 
	color: red;
}
'
]

{ #category : #accessing }
CodeWorldLibrary >> selectorsToInclude [
	^ #( mainCss )
]
