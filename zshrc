# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="josh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx svn rvm ruby rails rails3 brew bundler gem rake heroku java maven mvn gradle)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# Useful function should be loaded first of all!
[[ -s "$HOME/dotfiles/essentials" ]] && . "$HOME/dotfiles/essentials"


# Language settings for git gui and gitk.
LANG=en_US.UTF-8

# PATH
# Put /usr/local/{sbin,bin} first
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
# Put homebrew first
[[ -s /usr/local/Cellar ]] && export PATH=/usr/local/Cellar:$PATH


# Load SVN extensions.
[[ -s "$HOME/dotfiles/svnextensions" ]] && . "$HOME/dotfiles/svnextensions"


# Restrict tab completion to local files.
# Should speed up the shell, hopefully. Was pretty slow on MacOS.
__git_files () {
    _wanted files expl 'local files' _files
}

# Test existense of local environment settings and load them.
[[ -s "$HOME/.environment.local" ]] && . "$HOME/.environment.local"


# ---------------------------------------------------
for file in ~/.{aliases,functions,exports,aliases.local}; do
    [ -r "$file" ] && source "$file"
done
unset file

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# Test existense of RVM and load RVM into a shell session.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
