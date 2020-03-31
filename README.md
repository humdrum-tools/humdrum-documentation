Humdrum Documentation Website
==================================


Download
---------


```
git clone https://github.com/humdrum-tools/newdoc
```


Running locally
----------------

```
cd newdoc
./.serve
```

Then open a web browsers and type in the URL `http://127.0.0.1:8000`.


Editing files
--------------

You can edit files in the local copy and then refresh the web browser
to see the updates.  Note that it currently it takes about 4 seconds
for updates to be prepared.

In certain cases you will need to restart the local webservice by doing
control-C in the windows that is running the `.serve` script.  And
running `./.serve` again.  In rare cases you will need to delete the 
compiled website before running `.serve`.  To do this, type in the 
base directory of the repository:

```
rm -rf _site
```

This is the directory foro the compiled website, so removing it will
force a complete regeneration of the files.  This sort of case may happen
when the configuration file is changed, but usually this situation will
not occur.


Putting changes into the cloud
------------------------------

There are a few steps to posting the changes to the website online:

(1) Adding: Any new files need to be added to the repository
(2) Committing: Any changes to repository needs to 
(3) Pushing: all changes are copied from the local computer to the cloud.

After pushing back to the repository on Github, it will take about
one to ten minutes for the website to update online (Github needs
to recalculate the `_site` directory from the source files, and how
fast it does so will depend on the demand of other people's activity
doing the same thing.

### Adding files to the repository ####

Type `git status` to see a list of the files that have changes in them since the
last commit.  If there are any new files in the repository directories, they
need to be added manually.  Here is the basic command for that:

```
git add filename.txt
```

You can add all new files at once by typing in the root directory of the repository:

```
git add *
```

But be careful not to add any junk files in this manner.  There is a file called
`.gitignore` in the base directory of the repository that lists files/directories that
should be ignored (if you want to keep files in the local directory for the repository
but do not want to add them to the repository, such as the `_site` directory).

### Committing changes to the repository ###

You need to save changes to the repository before putting the changes online.  This is done with the
command:

```
git commit -am "Reason for the changes"
```

The `-a` option means to commit all changes files (you can also commit files 
individually with individual commit messages by removing `-a` and giving a list of files to selectively
commit.  The `-m` option followed by a string will be the commit message.  List a short reason why the
changes are being made.

### Pushing changes to the repository ###

To finally put the changes online, type:

```
git push
```

This will copy any new changes to the repository to the cloud.  And within a few minutes the updates
will be visible on the website.



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






