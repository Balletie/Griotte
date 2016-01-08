I am a GitHub backend for a comment on a review (pull request).

My subclasses specialize how to comment on a Group (a git-notes commit) or at the top-level (GrGitHubPRComment).

Public API and Key Messages

- #creator returns a GHUser wrapped in a GrGitHubUser