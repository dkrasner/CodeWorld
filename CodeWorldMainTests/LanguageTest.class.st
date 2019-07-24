Class {
	#name : #LanguageTest,
	#superclass : #TestCase,
	#instVars : [
		'language'
	],
	#category : #CodeWorldMainTests
}

{ #category : #accessing }
LanguageTest >> language [
	^ language
]

{ #category : #accessing }
LanguageTest >> language: anObject [
	language := anObject
]

{ #category : #running }
LanguageTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."
		
	language := Language new.
]

{ #category : #tests }
LanguageTest >> testAddSymbol [
	"I test whether a adding symbol to the language works"
	language add: 'a symbol'.
	self assert: (language all size) equals: 1.
	language remove: 'a symbol'.
	self assert: (language all size) equals: 0.
]

{ #category : #tests }
LanguageTest >> testRemoveSymbol [
	"I test whether a adding symbol to the language works"
	language add: 'a symbol'.
	self assert: (language all size) equals: 1.
	language remove: 'a symbol'.
	self assert: (language all size) equals: 0.
]
