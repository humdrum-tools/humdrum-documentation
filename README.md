Humdrum Documentation Website
==================================

The development website for Humdrum documentation is: https://www2.humdrum.org

Changes to individual pages can be done within the Github interface: https://github.com/humdrum-tools/newdoc

More efficient editing can be done locally.  The following documentation explains how to work
locally on the website.


Installation 
-----------

You need to have `git` installed on your computer.  For MacOS, install [Homebrew](https://brew.sh), which
will install it automatically.



Downloading
-----------


You must first download the website files from Github using the `clone` git command:


```bash
git clone https://github.com/humdrum-tools/newdoc
```

This will save the files for the repository in the `newdoc` subdirectory in the current
working directory.


Running locally
----------------

```bash
cd newdoc
./.serve
```

The first time you download the website repository, you will have to run the command:

```bash
bundle install
```


Then open a web browsers and type in the URL `http://127.0.0.1:8000`.


Editing files
--------------

You can edit files in the local copy and then refresh the web browser
to see the updates.  Note that it currently it takes about 4 seconds
for updates to be prepared.

In certain cases you will need to restart the local web service by doing
control-C in the windows that is running the `.serve` script.  And
running `./.serve` again.  In rare cases you will need to delete the 
compiled website before running `.serve`.  To do this, type in the 
base directory of the repository:

```bash
rm -rf _site
```

This is the directory for the compiled website, so removing it will
force a complete regeneration of the files.  This sort of case may happen
when the configuration file is changed, but usually this situation will
not occur.


Putting changes into the cloud
------------------------------

There are a few steps to posting the changes to the website online:

(0) Checking: 
(1) Adding: Any new files need to be added to the repository
(2) Committing: Any changes to repository needs to 
(3) Pushing: all changes are copied from the local computer to the cloud.

After pushing back to the repository on Github, it will take about
one to ten minutes for the website to update online (Github needs
to recalculate the `_site` directory from the source files, and how
fast it does so will depend on the demand of other people's activity
doing the same thing.

### Status and adding files to the repository ####

Type `git status` to see a list of the files that have changes in them since the
last commit, as well as a list of files that have changed.  You can also
type `git diff` or `git diff filename.txt` to see changes that have been
made to all files or a specific file since the last commit.

If there are any new files in the repository directories, they
need to be added manually.  Here is the basic command for that:

```bash
git add filename.txt
```

You can add all new files at once by typing in the root directory of the repository:

```bash
git add *
```

But be careful not to add any junk files in this manner.  There is a file called
`.gitignore` in the base directory of the repository that lists files/directories that
should be ignored (if you want to keep files in the local directory for the repository
but do not want to add them to the repository, such as the `_site` directory).

### Committing changes to the repository ###

You need to save changes to the repository before putting the changes online.  This is done with the
command:

```bash
git commit -am "Reason for the changes"
```

The `-a` option means to commit all changes files (you can also commit files 
individually with individual commit messages by removing `-a` and giving a list of files to selectively
commit.  The `-m` option followed by a string will be the commit message.  List a short reason why the
changes are being made.

To commit files individually (such as if you want to give a separate commit explanation for each file,
commit each one individually by not using the `-a` (meaning all) option:

```bash
git commit filename.txt -m "Reason for changing filename.txt"
```

### Pushing changes to the repository ###

To finally put the changes online, type:

```git
git push
```

This will copy any new changes to the repository to the cloud.  And within a few minutes the updates
will be visible on the website.  The list of commits on github should now include this one:

https://github.com/humdrum-tools/newdoc/commits/master



Getting changes from the cloud
------------------------------

Before starting to edit files on the local copy of the website, you should
run this command from any directory in the repository:

```
git pull
```

This will download any new changes to the website since you last downloaded it.
It is important to do this to minimize merges &ndash; where your local copy
and the remote copy of a file both have changes.  Sometimes these collisions will
need to be resolved manually, but doing `git pull` before working on the website
will minimize that problem.


Merging
---------

When you make changes to the website file repository at the same time as someone
else (or technically just after someone else and/or if you forgot to `git pull`
before starting to edit files), then git will complain:

```
$ git push
To https://github.com/humdrum-tools/newdoc
 ! [rejected]        master -> master (fetch first)
error: failed to push some refs to 'https://github.com/humdrum-tools/newdoc'
hint: Updates were rejected because the remote contains work that you do
hint: not have locally. This is usually caused by another repository pushing
hint: to the same ref. You may want to first integrate the remote changes
hint: (e.g., 'git pull ...') before pushing again.
hint: See the 'Note about fast-forwards' in 'git push --help' for details.
```

If this happens, then type:

```bash
git pull
```

This will cause the new online version of the repository and your local
copy to be merged (locally).  Usually this occurs automatically.  Sometimes
you will have to fix files if there are changes from two sources that cannot
be resolved automatically.  If this happens, git will list the files that
have a problem, and you have to choose which of the two versions of content
should be kept.  See [this Github](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/resolving-a-merge-conflict-using-the-command-line) page for how to do that.  Essentially,
search the files for lines that contain the string `=======` and chose the
version above or below that line and delete the unwanted one.



Issues page
------------

To report bugs or tasks for the website, add them to the issues page:

https://github.com/humdrum-tools/newdoc/issues


Original theme
--------------

The original jekyll theme for this website is from [this repository](https://github.com/tomjoht/documentation-theme-jekyll) and the [live version](https://idratherbewriting.com/documentation-theme-jekyll) which demonstrates various features.



Markdown editing tips
---------------------


### Using code block in embedded HTML ###


Normally HTML elements that are diplayed with the `block` style do not
allow Markdown content inside of them.  To use markdown syntax 
in these cases, add the attribute `markdown="1"` to the elemnt tag.

Example:

```html
<div markdown="1"> This text **is not** processed with `Markdown` </div>
```

<div markdown="1"> This text **is** processed with `Markdown` </div>


```html
<div markdown="1"> This text **is** processed with `Markdown` </div>
```

<div markdown="1"> This text **is not** processed with `Markdown` </div>



