# Dotfiles

This repository contains following configuration of mine:

- Dotfiles managed by [Homesick](https://github.com/technicalpickles/homesick)
- Custom *Oh My ZSH* theme called *Solar Panels*
- Definition of packages to install via Homebrew & Ruby Gems

## Installation

The following guide describes how to apply this configuration while setting up a macOS computer from scratch.

#### Step 1: [Oh My ZSH](https://github.com/robbyrussell/oh-my-zsh)

```bash
$ curl -L http://install.ohmyz.sh | sh
```

#### Step 2: [Homebrew](http://brew.sh)

Install Homebrew:

```bash
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Tap [homebrew-bundle](https://github.com/Homebrew/homebrew-bundle):

```bash
$ brew tap Homebrew/bundle
```

Install packages defined in the Brewfile from this repository:

```bash
$ ./packages/brew-bundle.sh
```

#### Step 3: Ruby & Gems

Install [rbenv](https://github.com/sstephenson/rbenv):

```bash
$ rbenv install 2.4.2
$ rbenv global 2.4.2
```

Since `rbenv` is not yet loaded using `.zshrc` it is necessary to load it manually in the shell:

```
$ if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
$ export PATH="~/.rbenv/shims:$PATH"
```

Install [Bundler](http://bundler.io):

```bash
$ gem install bundler
$ rbenv rehash
```

And finally install gems defined in the Gemfile in this repository. Make sure Xcode is installed, because some brews may depend on it.

```bash
$ bundle install
$ rbenv rehash
```

#### Step 4: Symlinking Dotfiles using [Homesick](https://github.com/technicalpickles/homesick)

Create a symlink from Homesick's configuration directory (`~/.homesick/repos/dotfiles`) to the local clone of this repository. When updating dotfiles, the changes are actually made to that local repository.

```bash
$ ln -s <path-to-this-repository> ~/.homesick/repos/dotfiles
```

Apply the symlinks. When asked to override an existing directory, type `n`. This is a [bug in Homesick](https://github.com/technicalpickles/homesick/issues/120).

```bash
$ homesick symlink
$ source ~/.zshrc
```
