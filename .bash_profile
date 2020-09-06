export BASH_SILENCE_DEPRECATION_WARNING=1
export LC_ALL=en_US.UTF-8

export PATH=$PATH:$HOME/Library/Python/2.7/bin
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /Users/user_name/Library/Python/2.7/lib/python/site-packages/powerline/bindings/bash/powerline.sh

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  source $(brew --prefix)/etc/bash_completion
fi

. $(brew --prefix asdf)/asdf.sh

export PATH=$PATH:/Users/user_name/.asdf/installs/elixir/1.9.1/.mix/escripts

eval "$(pyenv init -)"
eval "$(rbenv init -)"

# For installing erlang with asdf without error.
# Reference: https://dev.to/drebits/how-to-install-erlang-on-macos-with-asdf-3p1c
export CFLAGS="-O2 -g -fno-stack-check"
export KERL_CONFIGURE_OPTIONS="--disable-hipe --with-ssl=$(brew --prefix openssl)"
