"
This class contains tests for the MathVariable class.
"
Class {
	#name : #MathVariableTest,
	#superclass : #TestCase,
	#category : #CodeWorldMainTests
}

{ #category : #running }
MathVariableTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."
	basicVar := MathVariable new setDescription: 'this is a math variable'; setValue: 5.
]

{ #category : #tests }
MathVariableTest >> testDescription [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	| description  |
	description := basicVar getDescription.
	self assert: description equals: 'this is a math variable'. 
]

{ #category : #tests }
MathVariableTest >> testSymbol [
	"Symbolic representation of the variable test."
			
	self assert: basicVar symbol equals: '5'.
]

{ #category : #tests }
MathVariableTest >> testValue [
	"Setting and getting variable values."
			
	| storedVal |
	storedVal := 5.
	self assert: (basicVar getValue) equals: storedVal.
	basicVar setValue: 'x'.
	self assert: (basicVar getValue) equals: 'x'.
]
