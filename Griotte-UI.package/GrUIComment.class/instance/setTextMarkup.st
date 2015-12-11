accessing
setTextMarkup

	| preAuthorString postAuthorPreTimeString timeStampString postTimeString infoText |
	preAuthorString := 'Commented by '.
	postAuthorPreTimeString := ' around '.
	timeStampString := ((DateAndTime now - commentModel createdTime) roundTo: 1 day) humanReadablePrintString.
	postTimeString := ' ago'.
	commentModel editTime ~= commentModel createdTime ifTrue: [
		postTimeString := postTimeString , ', last edit: ' , commentModel editTime asString.
	].
	infoText := (preAuthorString , commentModel author get ,
		postAuthorPreTimeString , timeStampString , postTimeString) asText.
	infoText
		addAttribute: TextEmphasis bold.
	infoLabel label: infoText.