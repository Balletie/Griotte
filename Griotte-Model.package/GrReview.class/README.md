I represent a review for a particular change that is to be integrated into the system.

I can be used to add top-level comments to a review, and to approve or reject a review. Furthermore, I can provide the title, description and creator of the review, as well as the comments.

Public API and Key Messages

- #approve/#reject are self explanatory.
- #comments returns the top-level comments. That is, the comments pertaining to the review globally.
- #creator/#repository/#title/#description are accessors for a GrUser, GrRepository, the title String and the description String.

Internal Representation and Key Implementation Points.

    Instance Variables
	comments:		an OrderedCollection of GrComments