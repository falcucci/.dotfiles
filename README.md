# [Falcucci](https://github.com/falcucci)’s dotfiles

These are the base dotfiles that I start with when I set up a
new environment. For more specific local needs I use the `.local`
files described in the [`Local Settings`](#local-settings) section.

## Setup

To set up the `dotfiles` just run the appropriate snippet in the
terminal:

(:warning: **DO NOT** run the `setup` snippet if you don't fully
understand [what it does](src/os/setup.sh). Seriously, **DON'T**!)

| OS | Snippet |
|:---|:---|
| `macOS` | `bash -c "$(curl -LsS https://raw.github.com/falcucci/dotfiles/master/src/os/setup.sh)"` |
| `Ubuntu` | `bash -c "$(wget -qO - https://raw.github.com/falcucci/dotfiles/master/src/os/setup.sh)"` |

That's it! :sparkles:

The setup process will:

* Download the dotfiles on your computer (by default it will suggest
  `~/projects/dotfiles`)
* Create some additional [directories](src/os/create_directories.sh)
* [Symlink](src/os/create_symbolic_links.sh) the
  [`git`](src/git),
  [`shell`](src/shell), and
  [`vim`](src/vim) files
* Install applications / command-line tools for
  [`macOS`](src/os/install/macos) /
  [`Ubuntu`](src/os/install/ubuntu)
* Set custom
  [`macOS`](src/os/preferences/macos) /
  [`Ubuntu`](src/os/preferences/ubuntu) preferences
* Install [`vim` plugins](src/vim/vim/plugins)

## Screenshots

### Git

Output for `git log`:

<table>
    <tbody>
        <tr>
            <td>
                <img src="https://raw.githubusercontent.com/falcucci/clipboard-images/main/images/CleanShot%202023-07-01%20at%2012.41.24%402x.png" alt="Output for Git status on macOS" width="100%">
            </td>
        </tr>
        <tr align="center">
            <td>macOS</td>
        </td>
    </tbody>
</table>

Output for `git status`:

<table>
    <tbody>
        <tr>
            <td>
                <img src="https://raw.githubusercontent.com/falcucci/clipboard-images/main/images/CleanShot%202023-07-01%20at%2015.13.25%402x.png" alt="Output for Git status on macOS" width="100%">
            </td>
        </tr>
        <tr align="center">
            <td>macOS</td>
        </td>
    </tbody>r
</table>

### Neovim

Dark mode:

<table>
    <tbody>
        <tr>
            <td>
                <img src="https://raw.githubusercontent.com/falcucci/clipboard-images/main/images/CleanShot%202023-07-03%20at%2021.51.51%402x.png" alt="Output for Git status on macOS" width="100%">
            </td>
        </tr>
        <tr align="center">
            <td>macOS</td>
        </td>
    </tbody>
</table>


Light mode:
 
<table>
    <tbody>
        <tr>
            <td>
                <img src="https://raw.githubusercontent.com/falcucci/clipboard-images/main/images/CleanShot%202023-07-03%20at%2021.49.00%402x.png " alt="Output for Git status on macOS" width="100%">
            </td>
        </tr>
        <tr align="center">
            <td>macOS</td>
        </td>
    </tbody>
</table>

Transparent mode:

<table>
    <tbody>
        <tr>
            <td>
                <img src="https://raw.githubusercontent.com/falcucci/clipboard-images/main/images/CleanShot%202023-07-06%20at%2014.35.21%402x.png" alt="Output for Git status on macOS" width="100%">
            </td>
        </tr>
        <tr align="center">
            <td>macOS</td>
        </td>
    </tbody>
</table>


## Customize

### Local Settings

The `dotfiles` can be easily extended to suit additional local
requirements by using the following files:

#### `~/.bash.local`

The `~/.bash.local` file it will be automatically sourced after
all the other [`bash` related files](src/shell), thus, allowing
its content to add to or overwrite the existing aliases, settings,
PATH, etc.

Here is a very simple example of a `~/.bash.local` file:

```bash
#!/bin/bash

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Set local aliases.

alias starwars="telnet towel.blinkenlights.nl"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Set PATH additions.

PATH="$PATH:$HOME/projects/dotfiles/src/bin"

export PATH

```

#### `~/.gitconfig.local`

The `~/.gitconfig.local` file it will be automatically included
after the configurations from `~/.gitconfig`, thus, allowing its
content to overwrite or add to the existing `git` configurations.

__Note:__ Use `~/.gitconfig.local` to store sensitive information
such as the `git` user credentials, e.g.:

```bash
[commit]

    # Sign commits using GPG.
    # https://help.github.com/articles/signing-commits-using-gpg/

    gpgsign = true


[user]

    name = Cătălin Mariș
    email = alrra@example.com
    signingkey = XXXXXXXX
```

#### `~/.vimrc.local`

The `~/.vimrc.local` file it will be automatically sourced after
`~/.vimrc`, thus, allowing its content to add or overwrite the
settings from `~/.vimrc`.

### Forks

If you decide to fork this project, don't forget to substitute my
username with your own in the [`setup` snippets](#setup) and [in the
`setup` script](https://github.com/alrra/dotfiles/blob/1503cf23ef23f6e31342b140bcd246625160b94f/src/os/setup.sh#L3).

## Update

To update the dotfiles you can either run the [`setup`
script](src/os/setup.sh) or, if you want to just update one particular
part, run the appropriate [`os` script](src/os).

## Acknowledgements

Inspiration and code was taken from many sources, including:

* [Mathias Bynens'](https://github.com/mathiasbynens)
  [dotfiles](https://github.com/mathiasbynens/dotfiles)

## License

The code is available under the [MIT license](LICENSE.txt).
