# snrlab-template-code
Template for all kinds of coding

## Python `venv`

  - Create: `$(PYTHON) -m venv --symlinks --system-site-packages --clear $(PYVENV)`
  - Upgrade: `$(PYTHON) -m venv --symlinks --system-site-packages --upgrade --upgrade-deps $(PYVENV)`

## Git

  - `git clone --recurse-submodules`
  - `git pull --recurse-submodules --all --rebase --prune && git gc --aggressive`
