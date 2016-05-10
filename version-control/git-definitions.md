# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?  
Version control is keeping a log of the various alterations made to your code, and it's useful because it allows a programmer to create distinct separation between updates, easing debugging and feature implementation.
 

* What is a branch and why would you use one?  
A branch is a distinction defined in a git repository that refers to a set of file versions. This is useful for separating code updates into "buckets" with particular themes or ideas - for example, if I were creating a Twitter clone, and I wanted to add a direct-messaging feature, I would put that in a separate branch. Any errors in this implementation could be identified as separate from pre-existing code, and the feature could be removed by reverting to the old version. 


* What is a commit? What makes a good commit message?  
A commit adds one or more files to the current branch in the repository. A good commit message should use descriptive but to-the-point language to describe the changes being made.


* What is a merge conflict?  
A merge conflict occurs when a user tries to merge two branches, which each have a different version of a file, and both are different from the parent branch version of the file.