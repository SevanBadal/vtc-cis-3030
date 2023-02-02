# CIS 3030
## HW and Examples Cabal Project Repository

This repository includes boilerplate code for running pre-written unit tests on HW and examples projects.

Please submit issues before opening PRs if you find mistakes, errors, or areas of improvement.

This is a work in progress. Thank you!

### Recommended Setup
Cabal is required to build/run the testsuite and main application of each subdirectory in this repository.
1. Install [GHCup](https://www.haskell.org/ghcup/)
        - Windows users without WSL2, click  `Show all platforms` to reveal installation directly in Windows PowerShell
2. Verify the installation was successfull by typing `ghcup tui` in the commandline/powershell. You should see a textual overlay summarization the installed versions of GHcup, Stack, cabal, and GHC

Contact your instructor immediately if you are unable to complete the installation described above. 

### Branching Standard
This repo uses GitHub Actions to automate testing when certain branches are pushed. Explore `.github/workflows/haskell.yml` if you are interested in how this is working. In order for this action to run correctly, users must name branches accordingly:
```
<user-name>/<project-name>
```
`user-name` is any name that can be used to identify the student.  `project-name` must match one of the project subdirectories in this repository. For example, if student Buzz wanted to sumbit the "Simple Functions" homework assignment. They would push a branch named `buzz/simple-functions` to the this remote repository.

Always branch off the latest code state of a `main` before starting a project branch:

```
git checkout main
git fetch origin 
git reset --hard origin/main
```
| Beware, the commands above will wipe any unstaged changes on your local `main` branch. 

### Toolchain Version Checklist
- [ ]  GHC   9.2.5           recommended,base-4.16.4.0  
- [ ]  cabal 3.6.2.0         recommended     
