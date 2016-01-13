initialization
setTextMarkup

	| preAuthorString postAuthorPreTimeString timeStampString postTimeString infoText |
	preAuthorString := 'Commented by '.
	postAuthorPreTimeString := ' around '.
	timeStampString := self daysSince: commentModel createdAt.
	postTimeString := ' ago'.
	commentModel isEdited ifTrue: [ | updatedTimeString |
		updatedTimeString := self daysSince: commentModel editedAt.
		postTimeString := postTimeString , ', last edit ' , updatedTimeString , ' ago'.
	].
	infoText := (preAuthorString , commentModel creator username,
		postAuthorPreTimeString , timeStampString , postTimeString) asText.
	infoText
		addAttribute: TextEmphasis bold.
	infoLabel label: infoText.