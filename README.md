# Configuration

## What is this about?

This repository contains following personal configuration files of mine:

- dotfiles managed by [Homesick](https://github.com/technicalpickles/homesick)
- definition of packages to install via Homebrew & Ruby Gems
- custom [Oh my ZSH](https://github.com/robbyrussell/oh-my-zsh) theme *Solar Panels*
- custom OS X Terminal theme *Solar Panels*
- two custom keyboard layouts *Lupulus CZ* and *Lupulus EN*

## Installation

The following guide describes how to apply this configuration while setting up an OS X computer from scratch.

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
$ rbenv install 2.0.0-p195
$ rbenv global 2.0.0-p195
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

#### Step 5: Terminal Theme

Install the font `Menlo for Powerline` e.g. from this [Gist](https://gist.github.com/sjl/1627888#file-menlo-forpowerline-ttc-zip) and import `Solar Panels.terminal` in the Terminal’s preferences.

#### Step 6: Keyboard Layouts

First copy the keyboard layouts from this repository to `~/Library/Keyboard Layouts` using following script:

```bash
$ ./keyboard/install.sh
```

Then add both custom keyboard layouts in `System Preferences > Keyboard > Input Sources`. In order to remove all other system keyboard layouts further steps are necessary. Copy the current keyboard layout preferences:

```bash
$ cp ~/Library/Preferences/com.apple.HIToolbox.plist /tmp
$ open /tmp/com.apple.HIToolbox.plist
```

Manually remove the entries for system keyboard layouts under the key `AppleEnabledInputSources` and copy the new version of the preference files to its original location:

```bash
$ cp /tmp/com.apple.HIToolbox.plist ~/Library/Preferences/
```

Finally restart the computer.

## Author

Lukas Kubanek // [lukaskubanek.com](http://lukaskubanek.com) // [@kubanekl](https://twitter.com/kubanekl)
