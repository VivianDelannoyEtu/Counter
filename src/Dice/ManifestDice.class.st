"
I store metadata for this package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestDice,
	#superclass : #PackageManifest,
	#category : #'Dice-Manifest'
}

{ #category : #'code-critics' }
ManifestDice class >> ruleRBRefersToClassRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#DieHandle #+ #false)) #'2021-02-05T13:13:09.207675+01:00') )
]
