# Native Tree Sitter libraries

This directory contains the scripts that are used to build the native
Tree Sitter libraries.

To generate the project files that are used for building, run:

```powershell
pwsh prepare.ps1
```

To then build all of the generated packages, run:

```powershell
pwsh build.ps1
```

If you want to add support for another Tree Sitter language parser, do the
following:

1. Add the source repository for the Tree Sitter language parser as a
   `git submodule`.
2. Add an entry for the Tree Sitter language parser to `libraries.json`. This
   file is used by the `prepare.ps1` script to build the project that files that
   are run by `build.ps1`.
