#### CHECK GIT CONFIGURATION

The command returns a list of information about your git 
configuration including username and email.

	git config -l

#### CACHE YOUR LOGIN CREDENTIALS

	git config --global credential.helper cache

#### SETUP GIT CREDENTIALS

Setup username:

    git config --global user.name "your_username"

Setup email:

    git config --global user.email "your_email_address"

#### INITIALIZE A GIT REPO

    git init

#### ADD A FILE TO STAGING AREA

The command will add a file to the staging area, ready for commit.

    git add "filename" (adds only the file specified)
 
Add all files in the staging area.

   	git add . 

	git add *.txt (adds all text files)

#### CHECK A GIT REPO's STATUS

    git status

#### COMMIT CHANGES IN EDITOR IN GIT

This command will open a text editor in the terminal where you can write a full
commit message.

A commit message is made up of short summary of changes, and empty line, and a full
description of the changes after it.

	git commit

COMMIT CHANGES WITH A MESSAGE

You can also add a commit message without opening the editor.
This command lets you specify a short summary for your commit message.

	git commit -m "Your short commit message comes here."

#### COMMIT CHANGES AND SKIP THE STAGING AREA

Add and commit tracked files with a single command by using the `-a` and `-m` options.

	git commit -a -m "Your short commit message comes here."

#### SEE COMMIT HISTORY IN GIT

The command shows the history for the current repository.

	git log

#### SEE COMMIT HISTORY INCLUDING CHANGES IN GIT

This commands shows the commit history including all files and their changes.

	git log -p

#### SEE A SPECIFIC COMMIT IN GIT

This command shows a specific commit.
Replace commit_id with the id of the commit that you find in the commit log.

	git show "commit_id"

#### SEE LOG STATS IN GIT

Command cause git to show some statistics about the changes in each commit, including line(s) changes and file names.

	git log --stat

#### SEE CHANGES MADE BEFORE COMMITING THEM

You can also pass a file as a parameter to only see changes on a specific file. `git diff` shows only unstages changes by default.

We can call diff with the `--staged` flag to see any staged changes.

	git diff (shows all changes before commit)
	git diff "all_checks.py" (show changes made to all_checks.py)
	git diff --staged

#### SEE CHANGES USING 'git add -p'

This command opens a prompt and asks if you want to stage changes or not and includes other options.

	git add -p

#### REMOVE TRACKED FILES FROM CURRENT WORKING TREE IN GIT

This command expects a commit why a file was deleted.

	git rm filename

#### RENAME FILES IN GIT

This command stages the changes, then it expects a commit message.

	git mv "old_file" "new_file"

#### IGNORE FILES IN GIT

Create a `.gitignore` file and commit it.
Type the name or folders you want git to ignore inside the file.


#### REVERT UNSTAGED CHANGEs IN GIT

	git checkout filename

#### REVERT STAGED CHANGES IN GIT

You can use the `-p` option flag to specify the changes you want to reset.

	git reset HEAD filename
	git reset HEAD -p

#### AMMEND THE MOST RECENT COMMIT IN GIT

`git commit --amend` allows you to modify and and changes to the most recent commit.

	git commit --amend

**!!!NOTE:** _fixing up a local commit with amend is great and you can push it to a shared repository after you have fixed it. You should avoid amending commits that have already been made public._


#### ROLLBACK THE LAST COMMIT IN GIT

`git revert` will create a new commit that is the opposite of everything in the given commit.
We can revert the latest commit by using the head alias like this:

	git revert HEAD

#### ROLLBACK AN OLD COMMIT IN GIT

You can also revert an old commit using its commit id.
This opens the editor so you can add a commit message.

	git revert commit_id

#### CREATE A NEW BRANCH

By default, you have one branch the 'main' branch.
You won't switch to it automatically - you will need to do it manually.
You can create a new branch with the following command.

	git branch branch_name

#### SWITCH TO A NEWLY CREATED BRANCH IN GIT

When you want to use a different or newly created branch, use the following command:

	git checkout branch_name	

OR
	
	git switch branch_name

#### LIST BRANCHES IN GIT

View all created branched using the `git branch` command. It will show a list of all the branches and mark the current branch with an asterisk and highlight it.

	git branch

#### CREATE A BRANCH AND SWITCH TO IT IMMEDIATELY

Create a branch and switch to it immediately in one command.

	git checkout -b branch_name	

OR

	git switch -c branch_name

#### DELETE A BRANCH IN GIT

Delete a branch you no longer use in git using the following command:

	git branch -d branch_name

#### MERGE TWO BRANCHES IN GIT

To merge/combine the history of the branch you are currently in with the branch_name you will need, use the following command:

	git merge branch_name

#### SHOW THE COMMIT LOG AS A GRAPH IN GIT

Use the `--graph` to get the commit log to show as a graph.
Also, `--oneline` will limit commit messages to a single line.

	git log --graph and --oneline

#### SHOW THE COMMIT LOG AS A GRAPH OF ALL BRANCHES IN GIT

Does the same as the command above, but for all branches

	git log --graph and --oneline --all

#### ABORT A CONFLICTING MERGE IN GIT

To a merge away and start over, you can use the following command:

	git merge --abort

#### ADD A REMOTE REPO IN GIT

This command adds a remote repository to your local repository (replace the https://repo-url-here) with your repo URL

	git add remote https://repo_url_here

#### SEE REMOTE URLs IN GIT

See all remote repositories for your local repository with this command.

	git remote -v

#### GET MORE INFO ABOUT A REMOTE REPO IN GIT

replace the _origin_ with the name of the remote obtained by running the `git remote -v` command.

	git remote show origin

#### PUSH CHANGES TO A GIT REMOTE REPO IN GIT

After work is ready to be saved to a remote repository, push all changes using the following command:

	git push

OR

	git push branch_name (push to a specific branch)

#### PULL CHANGES FROM A REMOTE REPO IN GIT

You can retrieve the latest changes made to remote repository with the following command:

	git pull

#### CHECK REMOTE BRANCHES THAT GIT IS TRACKING

This command shows the name of all remote branches that git is tracking for the current repository.

	git branch -r

#### FETCH REMOTE REPO CHANGES IN GIT

This command will download the changes from a remote repository but will not perform a merge on your local branch (git pull does that instead)

	git fetch

#### CHECK THE CURRENT COMMITS LOG OF A REMOTE REPO IN GIT

Commit after commit, git builds up a log.
Find the remote repository log by using the following command:

	git log origin/main

#### MERGE A REMOTE REPO WITH LOCAL REPO	IN GIT

If the remote repository has changes you want to merge with your local, then use the following command:

	git merge origin/main

#### GET THE CONTENTS OF REMOTE BRANCHES IN GIT WITHOUT AUTOMATICALLY MERGING

This command lets you update the remote without merging any content into the local branches.
You can call git merge or git checkout to do the merge.

	git remote update

#### PUSH A NEW BRANCH TO A REMOTE REPO IN GIT

To push a branch to a remote repository you can use the command below.
Just remember to add `-u` to the create branch upstream

	git push -u origin branch_name

#### REMOVE/DELETE A REMOTE BRANCH IN GIT

If you no longer need a remote branch, use the following command ro remove it.

	git push --delete origin branch_name

#### USE GIT REBASE

You can transfer completed work from one branch to another using `git rebase`.
`git rebase` can get messy if you don't do it properly. Read the official docs before using this command

	git rebase branch_name

#### RUN REBASE INTERACTIVELY IN GIT

You can run git rebase interactively using the ``-i` flag.
It will open the editor and present a set of commands you can use.

	git rebase -i master
	# p, pick = use commit
	# r, reword = use commit, but edit the commit message
	# e, edit = use the commit, but stop for amending
	# s, squash = use commit, but meld into previous commit
	# f, fixup = like 'squash', but discard this commit's log message
	# x, exec = run command (the rest of the line) using shell
	# d, drop = remove commit

#### FORCE A PUSH REQUEST IN GIT

This command will force a push request.
This is usually fine for pull request branches because nobody else should have cloned them.
**!!!Note:** _don't do this with public repository_

	git push -f
