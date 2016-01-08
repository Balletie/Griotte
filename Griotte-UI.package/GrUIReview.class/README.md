I am a UI element for reviews.

I display information related to the creator, title, description of a review, and I show a list of comments in the review, which are displayed by GrUIComment.

I collaborate with GrUIComment, which is used to display a single comment. Furthermore, I use FTEasyListMorph (FastTable) to display the comments in a list.

Public API and Key Messages

- loadComments to load the comments on this review in a list and display them.
- use withReview: to instantiate me with an underlying GrReview model.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	commentList:		A FTEasyListMorph for displaying the comments.
	descriptionText:		TextInputFieldModel.
	reviewModel:		A GrReview, the underlying model.
	titleLabel:		A LabelModel for displaying the title.