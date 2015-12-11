I am a miner of relevant IDE events of Epicea.

My responsibility is to return Epicea events of a given log relevant to a given repository, or given package names.

My collaborators are GrRelevantVersionEventVisitor and Epicea logs (EpLog).

- Public API and Key Messages

- - onLog:: set a specific log from where to get the events.
- - mineUntil:: mine the events from the log relevant to the given repository or package names. When the given block returns true for the current event, we don't mine for events anymore related to the packages of that event.
- - use onRepository: or onPackageNames: for creating an instance.

- Example: 
	(GrEventMiner onPackageNames: {'Griotte'})
		mine.

- Instance Variables
	log:		The log to mine from.
	visitor:	A GrRelevantVersionEventVisitor, returning true or false.