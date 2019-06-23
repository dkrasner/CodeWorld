Class {
	#name : #TestClass,
	#superclass : #Object,
	#instVars : [
		'whoAmI'
	],
	#category : #CodeWorldMain
}

{ #category : #accessing }
TestClass >> whoAmI [
	^ 'you know'
]

{ #category : #accessing }
TestClass >> whoAmI: aString [
	^ aString
]
