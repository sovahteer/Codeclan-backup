# Git Flow CheatSheet

### Initial Repository Setup

Create a new directory, initialise git and create the online repository.

```
mkdir new_project_directory
cd new_project_directory

git init
```

Add any initial files that we want to start working on. Then add and commit them.

```
touch app.js

git add .
git commit -m "adds intial project files"
```

Link the local repository to a new online repository. 

First log into GitHub, create a new repo and copy the link given for the GitHub repo.
Then add the remote repository using the link.
```
git remote add origin <link from newly created repo on GitHub>
git push -u origin master
```

Add your partner as a collaborator to the repository on GitHub by going to the repository page. Click settings then collaborators and add a new collaborator. This will enable your partner to push and pull to the repository directly. 

Your partner will need to accept the invitation which is sent via email.

### Add a develop branch

Create the develop branch to work from.

```
git:(master) git checkout -b develop

git:(develop) git -u push origin develop

```

### Git Branch Workflow

The standard flow for working on a feature branch is as follows:

```
git:(feature/a_new_feature) git pull

git:(feature/a_new_feature) git add <files to commit>
git:(feature/a_new_feature) git commit -m "Your informative message which explains what has been commited"

git:(feature/a_new_feature) git pull
git:(feature/a_new_feature) git push
```

If the branch is being pushed for the first time, there will be no remote branch on GitHub. It is necessary to create and track this branch.

```
git:(feature/a_new_feature) git push -u origin <name of branch>
```

-u is short for --set-upstream.

When working on your feature branch it is essential to commit small pieces of work frequently. This makes commit messages easier to create and read. It's also easier to go back to a specific commit or revert to an earlier commit.

### Merging into develop

Checkout develop and pull to get the latest changes.
```
git:(feature/a_new_feature) git checkout develop
git:(develop) git pull
```

Checkout your feature branch and merge develop into your feature branch. This will allow you to resolve any merge conflicts in you feature branch instead of on develop. Once merged you can also test to see if your feature works with the latest code from the devlop branch.
```
git:(develop) git checkout feature/a_new_feature
git:(feature/a_new_feature) git merge develop
git:(feature/a_new_feature) git push
```

Checkout develop and merge your working feature branch into develop without any conflicts.
```
git:(feature/a_new_feature) git checkout develop
git:(develop) git merge feature/a_new_feature
git:(develop) git push
```