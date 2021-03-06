# my-iterm-and-vim

## iTerm

### Theme

1. Download [Solarized](https://ethanschoonover.com/solarized/).
2. Extract downloaded `solarized.zip`.
3. Open folder `solarized/osx-terminal.app-colors-solarized/`.
4. Right click `Solarized Dark ansi.terminal` and open it with iTerm.
5. Open `Preferences... -> Profiles -> Colors -> Color Presets... -> Solarized Dark`
6. Remove the downloaded zip file and extracted folder in previous steps.

### Powerline

1. Ensure that Python 2.7.x has been installed.
2. Install `pip`.

```
$ sudo easy_install pip
```

3. Install `Xcode Developer CLI tools`.

```
$ xcode-select --install
```

4. Install `Powerline`.

```
$ pip install --user powerline-status
```

5. Copy the installation location of `Powerline`.

```
$ pip show powerline-status
```

6. Open `.bash_profile` and add the following.

```
export PATH=$PATH:$HOME/Library/Python/2.7/bin
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /Users/user_name/Library/Python/2.7/lib/python/site-packages/powerline/bindings/bash/powerline.sh
```

7. Quit and restart the terminal. The presentation should be strange because we've not installed the font yet.
8. Clone the whole repository [powerline/fonts](https://github.com/powerline/fonts).

```
$ git clone https://github.com/powerline/fonts.git
```

9. Open `fonts/Meslo Dotted/` and install `Meslo LG L DZ Regular for Powerline.ttf` and `Meslo LG L DZ Italic for Powerline.ttf`.
10. Remove the cloned repository.
11. Open `Preferences... -> Profiles -> Text -> Font` and select `Meslo LG L DZ for Powerline`.
12. Quit and restart the terminal.
13. Open `/Users/user_name/Library/Python/2.7/lib/python/site-packages/powerline/config_files/themes/shell/__main__.json`.
14. Modify the value of `dir_limit_depth` to `1`.
15. Execute following command and restart the terminal to activate the settings.

```
$ powerline-daemon —-replace
```

16. Install `powerline-gitstatus`.

```
$ pip install --user powerline-gitstatus
```

17. Open `/Users/user_name/Library/Python/2.7/lib/python/site-packages/powerline/config_files/colorschemes/shell/default.json`.
18. Copy following key-value pairs where the source is from [jaspernbrouwer/powerline-gitstatus](https://github.com/jaspernbrouwer/powerline-gitstatus#configuration).

```
"gitstatus":                 { "fg": "gray8",           "bg": "gray2", "attrs": [] },
"gitstatus_branch":          { "fg": "gray8",           "bg": "gray2", "attrs": [] },
"gitstatus_branch_clean":    { "fg": "green",           "bg": "gray2", "attrs": [] },
"gitstatus_branch_dirty":    { "fg": "gray8",           "bg": "gray2", "attrs": [] },
"gitstatus_branch_detached": { "fg": "mediumpurple",    "bg": "gray2", "attrs": [] },
"gitstatus_tag":             { "fg": "darkcyan",        "bg": "gray2", "attrs": [] },
"gitstatus_behind":          { "fg": "gray10",          "bg": "gray2", "attrs": [] },
"gitstatus_ahead":           { "fg": "gray10",          "bg": "gray2", "attrs": [] },
"gitstatus_staged":          { "fg": "green",           "bg": "gray2", "attrs": [] },
"gitstatus_unmerged":        { "fg": "brightred",       "bg": "gray2", "attrs": [] },
"gitstatus_changed":         { "fg": "mediumorange",    "bg": "gray2", "attrs": [] },
"gitstatus_untracked":       { "fg": "brightestorange", "bg": "gray2", "attrs": [] },
"gitstatus_stashed":         { "fg": "darkblue",        "bg": "gray2", "attrs": [] },
"gitstatus:divider":         { "fg": "gray8",           "bg": "gray2", "attrs": [] }
```

19. Paste the copied key-value pairs into opened file. The content should be inside `groups` key.
20. Open `/Users/user_name/Library/Python/2.7/lib/python/site-packages/powerline/config_files/themes/shell/default.json`.
21. Add following content into opened file. The content should be the last element in `segments.left`.

```
{
  "function": "powerline_gitstatus.gitstatus",
  "priority": 40
}
```

22. Execute following command and restart the terminal to activate the settings.

```
$ powerline-daemon —-replace
```

## vim

### Install via Homebrew

1. Install [Homebrew](https://brew.sh/index_ja).
2. Install vim by Homebrew.

```
$ brew install vim
```

### Setup Plugin Manager ([Vundle](https://github.com/VundleVim/Vundle.Vim))

- `$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

## Git Autocomplete

1. `$ brew install bash-completion`.
2. Add following content into `.bash_profile`.

```
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  source $(brew --prefix)/etc/bash_completion
fi
```

3. `$ brew install git`.

### Useful Plugins, Keymaps, and Settings

1. Install plugin to preview markdown files. ([vim-instant-markdown](https://github.com/suan/vim-instant-markdown))

- Follow the tutorial in [here](https://vimawesome.com/plugin/instant-markdown-vim).

## Troubleshooting

### Locale

- Sometimes, the locale may be a problem when setting the iTerm based on the steps above.
- We can first `$ ls -la /usr/share/locale/ | grep en_US` to try to find `en_US.UTF-8`.
- And then, adding `export LC_ALL=en_US.UTF-8` into `.bash_profile` may be solve it. (After the setting, it's better to quit and restart iTerm)
