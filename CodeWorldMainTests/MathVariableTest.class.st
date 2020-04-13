"
This class contains tests for the MathVariable class.
"
Class {
	#name : #MathVariableTest,
	#superclass : #TestCase,
	#category : #CodeWorldMainTests
}

{ #category : #tests }
MathVariableTest >> testDescription [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	| description  |
	description := basicVar getDescription.
	self assert: (description = 'this is a math variable'). 
]
