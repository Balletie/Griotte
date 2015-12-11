accessing
setTextMarkup

	| preAuthorString postAuthorPreTimeString timeStampString postTimeString infoText |
	preAuthorString := 'Commented by '.
	postAuthorPreTimeString := ' around '.
	timeStampString := ((DateAndTime now - timeStamp) roundTo: 1 day) humanReadablePrintString.
	postTimeString := ' ago'.
	infoText := (preAuthorString , authorString ,
		postAuthorPreTimeString , timeStampString , postTimeString) asText.
	infoText
		addAttribute: TextEmphasis bold.
	infoLabel label: infoText.