I am a reducer of packages to consider as relevant for given events. I reduce the input space iteratively, and can be asked if there are still remaining packages to consider, and whether a given event is still relevant with respect to the current remaining packages.

My responsibility is defining how for each event one is to 1) get the packageNames and 2) to compute the difference with the remaining packages.

My collaborator is GrRelevantEventVisitor, which can determine whether a given event is relevant to a given collection of packages.

Public API and Key Messages

- hasRemainingPackages: test whether there are packages left to consider.
- isStillRelevant:: test whether a given event is still relevant to the remaining packages.
- subtractPackagesByPackagesFrom:: compute the difference of package names. This is a proxy method for readability.
- self class>>packageNames:: Initialize me with a set of package names.

Internal Representation and Key Implementation Points.

    Instance Variables
	packageNames:		a set of package names that are considered relevant at a certain point.

    Implementation Points
	I use a Set internally. The collection given at instance creation is converted to one using Collection>>asSet.