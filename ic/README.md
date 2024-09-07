# IC design

## Open source

Each module should have its own directory.  With opensource design, under each module, there should be separated
  - `Schematic`
  - `Layout`
  - `Testbench`

## xschem

  - Make sure there is a `xschemrc` file in the project's top directory.  And always launch `xschem` in this directory.  It will load the `rc` file, execute `append XSCHEM_LIBRARY_PATH :[file dirname [info script]]` in it, which makes the entire project folder (and sub folders) portable.  Symlink the pdk's `xschemrc` to the top directory is sufficient.

## magic

  - Make sure there is a `.magicrc` file in the project's top directory, and always launch `magic` in this directory.  The `rc` file contains
```
# Set DESIGN_HOME.  Cell instances will be searched under this directory
# "file nativename" guards against a local PDK_ROOT with "~" in the name
if {[catch {set DESIGN_HOME [file nativename $env(DESIGN_HOME)]}]} {
    set DESIGN_HOME [pwd]
}
```
which makes the entire project directory structure portable when instances in `.mag` files reference `$DESIGN_HOME`.

The supplied `.magicrc` also includes some useful key bindings by Institute for Integrated Circuits, Johannes Kepler University Linz.

## `Cadence`

`Cadence` libraries and proprietary designs should go here.

## `icvenv`

This is a `python` `venv` for IC design, simulation, etc.
