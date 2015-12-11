private
branchNameFromReviewTitle: aString

	^ (aString asLowercase copyReplaceAll: ' ' with: '-') first: 20