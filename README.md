# Homebrew tap for Iguana

[Iguana](https://iguana.onlychan.xyz) is a tiling window manager for macOS that works inside
native desktops and never hides a window.

```sh
brew tap chandram-dutta/tap
brew trust chandram-dutta/tap
brew install --cask iguana
```

That installs Iguana.app and puts the `iguana` command on your PATH. `brew trust` is how
Homebrew is told that a tap outside its own is one you mean to use; older versions of
Homebrew do not have the command and do not need it. To update later:

```sh
brew upgrade --cask iguana
```

The cask in `Casks/iguana.rb` is written by Iguana's release pipeline. Report problems in the
[Iguana repository](https://github.com/Chandram-Dutta/iguana/issues).
