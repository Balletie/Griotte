accessing
setTextMarkup

	| preAuthorString postAuthorPreTimeString timeStampString postTimeString infoText |
	preAuthorString := 'Commented by '.
	postAuthorPreTimeString := ' around '.
	timeStampString := ((DateAndTime now - commentModel createdAt) roundTo: 1 day)
		humanReadablePrintString.
	postTimeString := ' ago'.
	commentModel isEdited ifTrue: [
		postTimeString := postTimeString , ', last edit: ' , commentModel editAt asString.
	].
	infoText := (preAuthorString , commentModel creator username,
		postAuthorPreTimeString , timeStampString , postTimeString) asText.
	infoText
		addAttribute: TextEmphasis bold.
	infoLabel label: infoText.