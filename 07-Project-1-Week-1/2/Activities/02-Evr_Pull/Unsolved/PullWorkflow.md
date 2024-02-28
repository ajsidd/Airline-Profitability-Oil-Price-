# Git Pull Workflow

Consider the following workflow for interacting with GitHub.

## Pull Reference

* The following pull syntax mirrors push syntax:

```bash
git pull origin main
```

* To pull from GitHub to a branch _other than_ `main`, we simply **checkout** and **specify the branch**, as in the following code:

```bash
git checkout other_branch
git pull origin other_branch
```

* To simultaneously pull and merge the most recent version of `main` into the branch you're currently on, simply pull from `origin/main`, while on `origin main`, _into_ `<other_branch>`, as in the following code:

```bash
git checkout other_branch
git pull origin main
```

  * This code checks out `other_branch`, fetches changes to `main` from GitHub, and then merges them into `other_branch`.

* To avoid issues with merge conflicts, you should always `git pull` before merging or pushing, as in the following code:

```bash
git checkout main
# Do some work, add, commit

git push origin main
git checkout other_branch
# Do some work, add commit

git checkout main
git pull
git merge other_branch
git push main
```

- - -

© 2022 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.
