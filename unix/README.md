# Unix (terminal) configuration

## `SSH`

We use public key authentication.  Follow the documentation to set up and protect your keys!

## `git`

The supplied configuration files are supposed to be used to update/augment the existing one with `[user]` section already set up.

## `.inputrc`

This is a `readline` init file.  It binds certain key combinations to terminal program input functions.  For instance, the supplied file binds `Alt-p` and `Alt-n` to search for shell history.

## Terminal multiplexer: `screen` and `tmux`

We set `C-o` as prefix to be nice for `emacs` (and other general) users.  `C-o` is a very rarely used key combination.

### `.screenrc`

This one includes a hardstatus bar at the bottom.

### `tmux`

Use <https://github.com/gpakosz/.tmux.git> for configuration.  In `.tmux.conf.local`, apply the following patch:
```
 # replace C-b by C-a instead of using both prefixes
-# set -gu prefix2
-# unbind C-a
-# unbind C-b
-# set -g prefix C-a
-# bind C-a send-prefix
+#<<< YMei
+set -gu prefix2
+unbind C-o
+unbind C-b
+set -g prefix C-o
+bind C-o send-prefix
+#>>> YMei
```

## `.pythonrc.py`

Combined with environment variable `PYTHONSTARTUP=$HOME/.pythonrc.py`, when launching python, it sets some default and convenience routines to be loaded at start.

## `.vimrc`

For `NeoVim`, follow [Transitioning from Vim](https://neovim.io/doc/user/nvim.html#nvim-from-vim): in `~/.config/nvim/init.vim`, add
```
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
```
This allows `NeoVim` and `Vim` to use the same configuration files.

## `.bashrc` and `.zshrc`

<https://github.com/ohmyzsh/ohmyzsh> is highly recommended.

```
# Ruby gems
export GEM_HOME=$HOME/.gem
export PYTHONSTARTUP=$HOME/.pythonrc.py
export PYTHONPATH=$HOME/Work/Program/UtilLib:$PYTHONPATH
#for epstopdf to embed all fonts
export GS_OPTIONS="-dEmbedAllFonts=true -dPDFSETTINGS=/prepress"
export GDFONTPATH="/usr/share/fonts/corefonts"
export GPG_TTY=`tty`
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent

export LANG="en_US.UTF-8"
export LC_CTYPE="zh_CN.UTF-8"
```
For using `fzf`:
```
test -r /opt/local/share/fzf/shell/key-bindings.zsh && source /opt/local/share/fzf/shell/key-bindings.zsh
test -r /opt/local/share/fzf/shell/completion.zsh && source /opt/local/share/fzf/shell/completion.zsh
```
For multiple `bash` instances to eventually merge all histories together:
```
shopt -s histappend
HISTSIZE=5000
```

## `.Xdefaults`

Set some good defaults for `emacs` and virtual terminals.

## CERN `root`

The supplied files set a good default, especially the plotting style.
