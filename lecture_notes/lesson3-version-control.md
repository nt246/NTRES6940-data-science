Lesson 3: The Git workflow
================

<br>

## Readings

<br>

#### Required:

  - [Excuse me, do you have a moment to talk about version
    control?](https://peerj.com/preprints/3159/) by Jenny Bryan

<br>

#### Other resources:

  - [GitHub Guides](https://guides.github.com/) has a number of
    tutorials. “Hello World” is a good place to start

  - [Happy Git with R](https://happygitwithr.com/) by Jenny Bryan

  - [GitHub for Project
    Management](https://openscapes.github.io/series/github-issues.html)
    by Openscapes

<br> <br>

Adding a test string here

## Learning objectives

By the end of this class you will be able to:

  - Locate your personal GitHub repo through which you’ll be submitting
    homework and exercises for this course
  - Create and edit plain text files on GitHub
  - Navigate the commit history of a repository and a file on GitHub
  - Clone a repo locally using RStudio
  - Sync local changes to a file back to remote (and GitHub) with pull,
    stage, commit, push
  - Describe the advantages of a project-oriented workflow in RStudio
    and set up a version-controlled project directory on your computer

<br>

## Introducing Git and GitHub

Let’s first talk about what Git and GitHub are. See the slides.

### Account types

GitHub allows for cloud storage, like Google Drive and Dropbox do. But
there’s a bit more structure than just storing files under your account:

  - Repositories (aka “repos”): All files must be organized into
    repositories. Think of these as self-contained projects. These can
    either be public or private.

  - User Accounts vs. Organization Accounts (aka “Org”): All
    repositories belong to an account:

  - A user account is the account you just made, and typically holds
    repositories related to your own work.

  - An Organization account can be owned by multiple people, and
    typically holds repositories relevant to a group (like
    `therkildsen-class`).

Examples:

  - The [ggplot2 repo](https://github.com/tidyverse/ggplot2), within its
    corresponding `tidyverse Org`
  - Our [class website](https://github.com/nt246/NTRES6940-data-science)
    within Nina’s user account `nt246`

### Say hello to your course repo on GitHub

We have created a GitHub Classroom organization for the class. To access
you personal course repo through which you will be submitting your
assignments and communicating with us, click
[here](https://classroom.github.com/a/SA7QIA7g) and select your name
from the list (or just click continue if you don’t see your name there).

Once you land on your repo page, notice that it is hosted within our
course organizational account `therkildsen-class`, not your personal
account (see the path in the top left corner). To make this repo also
show up on your personal account page, click the “Star” bottom on the
top right of the page. Now if you click on the profile information in
the very top right corner, and select the “Your profile” option, you’ll
be taken to your personal account page. Under the “Stars” category, your
course repo should show up (it should be named something like
`therkildsen-class / ntres-6940-YOUR_USER_NAME`). Click on the repo name
to return to your course repo.

## Navigating GitHub

### Make a new file on your course repo

#### Together:

  - Click on the “Create New File” button on your repository’s home
    page.
  - Call it `navigating_github.md`
  - Leave it blank, and commit (“save”) the file by clicking on green
    “commit new file” button at the bottom of the page.
  - Together: Add the URL for our [course
    homepage](https://github.com/nt246/NTRES6940-data-science) to your
    `navigating_github.md` file (click on the pen button to edit),
    together with some commentary
  - Commit the changes

#### Your turn:

  - Now add the URL’s (with commentary) to
    
      - your personal class repo
      - your user account page

  - Commit the changes

  - Now create a new subdirectory for course notes (remember to not use
    spaces in names, so you can call it something like course-notes)

If you can’t figure out how to do that, you’re not the first to wonder.
Let’s [ask the
internet](https://github.com/KirstieJane/STEMMRoleModels/wiki/Creating-new-folders-in-GitHub-repository-via-the-browser)

### Exploring the commit history of a repo

We’ll go through this together.

GitHub uses a program called git to keep track of the project’s history.

Users make “commits” to form a commit history

  - git only tracks the changes associated with a commit, so it doesn’t
    need to take a snapshot of all your files each time.
  - The actual changes are called a diff.

Demostration:

  - View commit history of the [course website
    repo](https://github.com/nt246/NTRES6940-data-science) by clicking
    on the “commits” button on the repo home page.
  - View a recent diff by clicking on the button with the SHA or hash
    code (something like `6c0a5f1`).
  - This is also useful for collaborators to see exactly what you
    changed.
  - View the repository from a while back with the \<\> button.
  - View the history of a file by clicking on the file, then clicking
    “History”.

### Why version control?

  - Don’t fret removing stuff
  - Leave a breadcrumb trail for troubleshooting
  - “Undo” and navigate a previous state
  - Helps you define your work

<br> \#\# Interfacing with GitHub from our local computers using RStudio

We should all have set up git on our local computers by now. If you
haven’t, follow the instructions
[here](https://github.com/nt246/NTRES6940-data-science/blob/master/lecture_notes/lesson2-rmarkdown-github.md#configure-github)
