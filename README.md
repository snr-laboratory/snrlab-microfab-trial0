# Trial run of micro-fabrication: interposer, individual FET, ACF, IC packaging

- Project planning documents go under [./doc/](./doc/ProjectPlans.md)
- Analysis, results, images, etc. go under [./analysis/](./analysis/)

## Software

### GDS creation/editing

- [KLayout](https://www.klayout.de/)
- [GDSFactory](https://gdsfactory.github.io/gdsfactory/)

### Documentation

- Recommend using <https://github.dev/> to directly open `.md` files on GitHub in browser (vscode in browser) to edit
- Use [draw.io](https://www.drawio.com/) for sketching.  `.md` can include and display the generated `.svg` files directly.  Install vscode extension `Draw.io Integration` to edit sketches in vscode directly.
- Clearly separate `.md` files and `assets` such as sketches and figures/images.  Put those under `./assets` directory.

### Python
  
- Create: `$(PYTHON) -m venv --symlinks --system-site-packages --clear $(PYVENV)`
- Upgrade: `$(PYTHON) -m venv --symlinks --system-site-packages --upgrade --upgrade-deps $(PYVENV)`

### Git

- `git clone --recurse-submodules`
- `git pull --recurse-submodules --all --rebase --prune && git gc --aggressive`
