"
TODO
"
Class {
	#name : #RSHTMLExporter,
	#superclass : #RSRoassalExporter,
	#category : #'Roassal-Exporters-Core'
}

{ #category : #accessing }
RSHTMLExporter class >> extension [
	^ 'html'
]

{ #category : #public }
RSHTMLExporter >> exportToFile: file [
	"TODO"
	self subclassResponsibility
]
