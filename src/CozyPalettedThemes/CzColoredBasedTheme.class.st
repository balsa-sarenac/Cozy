Class {
	#name : #CzColoredBasedTheme,
	#superclass : #PharoDarkTheme,
	#category : #CozyPalettedThemes
}

{ #category : #query }
CzColoredBasedTheme class >> beCurrent [
	super beCurrent.
	PharoCommonSettings setThemeSetting
]

{ #category : #configuration }
CzColoredBasedTheme class >> colorConfiguratorClass [

	^ self subclassResponsibility
]

{ #category : #accessing }
CzColoredBasedTheme class >> isAbstract [
	^ self = CzColoredBasedTheme
]

{ #category : #'fill-styles' }
CzColoredBasedTheme >> progressBarProgressFillStyleFor: aProgressBar [
	^ self subclassResponsibility
]

{ #category : #'fill-styles-taskbar' }
CzColoredBasedTheme >> taskbarFillStyleFor: aTaskbar [
	^ SolidFillStyle color: (self backgroundColor muchDarker alpha: 0.8)
]
