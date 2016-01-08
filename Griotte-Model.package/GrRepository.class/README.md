I represent a repository containing reviews.

I can return all of the local reviews (active in Griotte), as well as all other reviews which are not opened. I can be used to create a new review by sending newReviewWithTitle:description: to an instance of me.

Public API and Key Messages

- localReviews: reviews that are active in Griotte.
- allReviews: all reviews, local and non-local.

Internal Representation and Key Implementation Points.

    Instance Variables
	localReviews:		an OrderedCollection of GrReviews which are currently active in Griotte.