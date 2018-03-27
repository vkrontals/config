# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/vkrontals/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# MAG servers
alias nextbetdev="tmux-cssh -sc gdc-de1-nbfe01.msgreen.dom gdc-de1-nbfe02.msgreen.dom gdc-de1-nbfe03.msgreen.dom gdc-de1-nbbcon01.msgreen.dom"
alias nextbetint="tmux-cssh -sc gdc-in1-nbfe01.msgreen.dom gdc-in1-nbfe02.msgreen.dom gdc-in1-nbfe03.msgreen.dom gdc-in1-nbbcon01.msgreen.dom"
alias nextbetstg="tmux-cssh -sc mic-stg-nb-fe01.msorange.dom mic-stg-nb-fe02.msorange.dom mic-stg-nb-fe03.msorange.dom mic-stg-nb-bcon01.msorange.dom"
alias nextbetprd="tmux-cssh -sc mic-nb-fe01.msred.dom mic-nb-fe02.msred.dom mic-nb-fe03.msred.dom mic-nb-fe04.msred.dom mic-nb-fe05.msred.dom mic-nb-fe06.msred.dom mic-nb-fe07.msred.dom mic-nb-fe08.msred.dom mic-nb-fe09.msred.dom"

alias dafabetdev="tmux-cssh -sc gdc-als-sbfe01.msgreen.dom gdc-als-sbfe02.msgreen.dom gdc-als-sbfe03.msgreen.dom gdc-als-sbcon01.msgreen.dom"
alias dafabetint="tmux-cssh -sc gic-als-sbfe01.msgreen.dom gic-als-sbfe02.msgreen.dom gic-als-sbfe03.msgreen.dom gic-als-sbcon01.msgreen.dom"
alias dafabetstg="tmux-cssh -sc msc-als-dffe01.msorange.dom msc-als-dffe02.msorange.dom msc-als-dffe03.msorange.dom msc-als-dfbc01.msorange.dom msc-als-dfbc02.msorange.dom"
alias dafabetprd="tmux-cssh -sc mpc-als-dffe01.msred.dom mpc-als-dffe02.msred.dom mpc-als-dffe03.msred.dom mpc-als-dffe04.msred.dom mpc-als-dffe05.msred.dom mpc-als-dffe06.msred.dom mpc-als-dffe07.msred.dom mpc-als-dffe08.msred.dom mpc-als-dffe09.msred.dom mpc-als-dfbc01.msred.dom"

alias dafabahisdev="tmux-cssh -sc gdc-als-bhfe01.msgreen.dom gdc-als-bhfe02.msgreen.dom gdc-als-bhfe03.msgreen.dom gdc-als-bhcon01.msgreen.dom"
alias dafabahisint="tmux-cssh -sc gic-als-bhfe01.msgreen.dom gic-als-bhfe02.msgreen.dom gic-als-bhfe03.msgreen.dom gic-als-bhcon01.msgreen.dom"
alias dafabahisstg="tmux-cssh -sc msc-als-bhfe01.msorange.dom msc-als-bhfe02.msorange.dom msc-als-bhfe03.msorange.dom msc-als-bhcon01.msorange.dom"
alias dafabahisprd="tmux-cssh -sc mpc-als-bhcon01.msred.dom mpc-als-bhfe01.msred.dom mpc-als-bhfe02.msred.dom mpc-als-bhfe03.msred.dom"



#checkout prev (older) revision
git_prev() {
 git checkout HEAD~
}

# checkout next (newer) commit
git_next() {
  BRANCH=`git show-ref | grep $(git show-ref -s -- HEAD) | sed 's|.*/\(.*\)|\1|' | grep -v HEAD | sort | uniq`
  HASH=`git rev-parse $BRANCH`
  PREV=`git rev-list --topo-order HEAD..$HASH | tail -1`
  git checkout $PREV
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
