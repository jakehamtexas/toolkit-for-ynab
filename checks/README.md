# Checks

Checks are the steps that are run in CI (continuous integration).

Currently, there are two different phases of CI in the project:

1. A precommit hook.
2. GitHub Actions that run when a pull request is opened.

Checks are run dynamically from the scripts in this directory. If a script exists in this directory, it will be run
during one of the above phases of CI. If the script exits with a nonzero exit code, the CI phase will fail.

In each case, this means:

1. Precommit - the commit will fail. You can modify your staged files and then try again.
2. GitHub Actions - The action will fail. You can modify your branch locally and push it up to your GitHub remote to try again.

## Adding a new check

Simply place a script file in this directory that does some checking on the filesystem.

```sh
touch checks/my-new-check.sh
```

Make sure to put a shebang at the top of the script file.

```sh my-new-check.sh
#!/usr/bin/env sh
```

Then, write the script you'd like to check the repo with, exiting nonzero if it fails.

```sh my-new-check.sh
#!/usr/bin/env sh

# Your script goes here
```
