I test whether a given Epicea event is relevant to the package names I contain.

I know how to test this for each Epicea event, since I implement the visitor pattern.

My collaborator is GrPackageReducerVisitor, which instantiates me to test for relevancy.

Public API and Key Messages

- Use onPackageNames: to create an instance.
- Pass me to an Epicea event by sending accept: to it with me as an argument.

Internal Representation and Key Implementation Points.

    Instance Variables
	packageNames:		A collection of package names.