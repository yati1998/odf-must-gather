## How to Contribute

The odf-must-gather project accept contributions via GitHub pull requests.
This document outlines how to contribute to the project.

## Contribution Flow

Developers must follow these steps to make a change:

1. Fork the `red-hat-storage/odf-must-gather` repository on GitHub.
2. Create a branch from the master branch, or from a versioned branch (such
   as `release-4.13`) if you are proposing a backport.
3. Make changes.
4. Create tests as needed and ensure that all tests pass.
5. Ensure your commit messages include sign-off.
6. Push your changes to a branch in your fork of the repository.
7. Submit a pull request to the `red-hat-storage/odf-must-gather` repository.
8. Work with the community to make any necessary changes through the code
   review process (effectively repeating steps 3-8 as needed).

## Commit Requirements

All commits to odf-must-gather must follow the guidelines in this section.

### Commits Per Pull Request

odf-must-gather is a project which maintains several versioned branches
independently. When backports are necessary, monolithic commits make it
difficult for maintainers to cleanly backport only the necessary changes.

Pull requests should always represent a complete logical change. Where
possible, though, pull requests should be composed of multiple commits that
each make small but meaningful changes. Striking a balance between minimal
commits and logically complete changes is an art as much as a science, but
when it is possible and reasonable, divide your pull request into more commits.

Some times when it will almost always make sense to separate parts of a change
into their own commits are:
- Changes to unrelated formatting and typo-fixing.
- Refactoring changes that prepare the codebase for your logical change.
- Similar changes to multiple parts of the codebase (for instance, similar
  changes to handling of CephFilesystem, CephBlockPool, and CephObjectStore).

Even when breaking down commits, each commit should leave the codebase in a
working state. The code should add necessary unit tests and pass unit tests,
formatting tests, and usually functional tests.

### Commit and Pull Request Messages

- The message must begin with a single summary line describing the change.
  - It must be capitalized.
  - It must not end with a period.
  - It must be <= 80 characters in length.
  - *Recommendation*: It should be written in the *imperative mood*: "Fix bug x"
    rather than "Fixed bug x" or "Fixes bug x". (The sentence "If applied, this
    commit will \<your summary\>" should be grammatical.)
- The message should continue with a longer description of the change.
  - The description must be preceded by a single blank line to separate it from
    the summary.
  - It must describe why the change is necessary or useful.
  - It must describe how the change was implemented.
  - It must reference any open issues the change addresses.
  - It must wrap at 80 characters.
  - *For very small changes it may be acceptable to omit the longer description.
    Please remember, that it is easy for any developer to believe their code is
    "self-documenting" when it is not. Adding a description will help future
    maintainers of the project.*
- The message must end with a sign-off, as discussed in [Certificate of
  Origin](#certificate-of-origin).
  - The sign-off must be preceded by a single blank line to separate it from
    the preceding section. 
  - If the code has multiple authors:
     - Each author must add a sign-off.
     - *Recommendation*: A "Co-authored-by:" line should be added for each
       additional author.

Pull request messages should follow the same format, but for the entire set of
changes contained in the pull request.

### Certificate of Origin

All commit messages must contain a sign-off indicating that the contributor
asserts that they have the legal right to make the contribution and agrees
that the contribution will be a matter of public record.

```
A description of my change

Signed-off-by: Your Name Here <youremailaddress@yourdomain.org>
```

Git has added the `-s` flag to `git commit`, which will automatically
append the necessary signature:

```
git commit -s
```

If you need to add a signoff to your latest commit, append the `--amend` flag
as well.
