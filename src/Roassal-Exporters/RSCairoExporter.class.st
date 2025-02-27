"
I represent the abstract class to export Roassal shapes, using AthensCairo, in different formats 
"
Class {
	#name : #RSCairoExporter,
	#superclass : #RSRoassalExporter,
	#category : #'Roassal-Exporters-Core'
}

{ #category : #public }
RSCairoExporter >> cairoSurfaceClass [ 
	^ self subclassResponsibility
]

{ #category : #public }
RSCairoExporter >> createCairoSurfaceFor: file [
	^ self cairoSurfaceClass 
		extent: cameraSetter extent
		fileName: file pathString
]

{ #category : #public }
RSCairoExporter >> exportToFile: file [
	| surface oldSurface morph |
	self removeIfNecessary: file.
	surface := self createCairoSurfaceFor: file.
	morph := self morph.
	self cameraSetter set: [
		oldSurface := morph surface.
		morph surface: surface.

		morph drawShapes.
		surface close.

		surface := nil.
		morph surface: oldSurface. ]
]
