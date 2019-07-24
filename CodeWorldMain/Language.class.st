Class {
	#name : #Language,
	#superclass : #Object,
	#instVars : [
		'symbols'
	],
	#category : #CodeWorldMain
}

{ #category : #adding }
Language >> add: aSymbol [
	"adds a symbol to the language"
	^ self all add: aSymbol.
]

{ #category : #accessing }
Language >> all [
	^ symbols.
]

{ #category : #initialization }
Language >> initialize [

	self symbols: OrderedCollection new.
]

{ #category : #removing }
Language >> remove: aSymbol [
	"remove a symbol from the language"
	^ self all remove: aSymbol.
]

{ #category : #accessing }
Language >> symbols: anObject [
	symbols := anObject
]
