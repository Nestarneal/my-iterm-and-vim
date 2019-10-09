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
