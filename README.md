# Configuration

## What is this about?

This repository contains following personal configuration files:

- dotfiles managed by [Homesick](https://github.com/technicalpickles/homesick)
- custom [Oh my ZSH](https://github.com/robbyrussell/oh-my-zsh) theme *Solar Panels*
- custom OS X Terminal theme *Solar Panels*
- two custom keyboard layouts *Lupulus CZ* and *Lupulus EN*

## Installation

The following guide describes how to apply this configuration while setting up an OS X computer from scratch.

#### Step 1: [Oh My ZSH](https://github.com/robbyrussell/oh-my-zsh)

```bash
curl -L http://install.ohmyz.sh | sh
```

#### Step 2: [Homebrew](http://brew.sh)

```bash
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

#### Step 3: Homebrew Packages

```bash
./brew-install.sh
```

#### Step 4: Ruby using [rbenv](https://github.com/sstephenson/rbenv)

```bash
rbenv install 2.0.0-p195
rbenv global 2.0.0-p195
```

#### Step 5: [Bundler](http://bundler.io) & Gems

Since `rbenv` is not yel loaded using `.zshrc` it is necessary to load it manually in the shell:

```
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export PATH="~/.rbenv/shims:$PATH"
```

Install Bundler:

```bash
gem install bundler
rbenv rehash
```

And finally install gems from the Gemfile in this repository.

```bash
bundle install
rbenv rehash
```

#### Step 6: Symlinking Dotfiles using [Homesick](https://github.com/technicalpickles/homesick)

```bash
homesick clone $(pwd)
homesick symlink Configuration
source ~/.zshrc
```

*Note: The first command creates a symlink from `~/.homesick/repos/Configuration` to the local copy of this repository. When updating the dotfiles, the changes are actually made to that local repository.*

#### Step 7: Terminal Theme

Install the font `Menlo for Powerline` e.g. from this [Gist](https://gist.github.com/sjl/1627888#file-menlo-forpowerline-ttc-zip) and import `Solar Panels.terminal` in the Terminal’s preferences.

#### Step 8: Keyboard Layouts

First copy the keyboard layouts from this repository to `~/Library/Keyboard Layouts` using following script:

```bash
./keyboard-install.sh
```

Then add both custom keyboard layouts in `System Preferences > Keyboard > Input Sources`. In order to remove all other system keyboard layouts further steps are necessary. Copy the current keyboard layout preferences:

```bash
cp ~/Library/Preferences/com.apple.HIToolbox.plist /tmp
open /tmp/com.apple.HIToolbox.plist
```

Manually remove the entries for system keyboard layouts under the key `AppleEnabledInputSources` and copy the new version of the preference files to its original location:

```bash
cp /tmp/com.apple.HIToolbox.plist ~/Library/Preferences/
```

Finally restart the computer.

## Author

Lukas Kubanek // [lukaskubanek.com](http://lukaskubanek.com) // [@kubanekl](https://twitter.com/kubanekl)
