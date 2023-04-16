if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.  export ZSH="/home/passaglia/.oh-my-zsh"
export ZSH="/home/passaglia/.oh-my-zsh"

# path to flutter
export PATH="$PATH:/home/passaglia/Documentos/flutter/bin"
export PATH="$PATH:/opt/flutter/bin"
export LIBSEAT_BACKEND="logind"
export ANDROID_SDK_ROOT="/home/passaglia/Android"
export PATH="~/.npm-global/bin:$PATH:$ANDROID_SDK_ROOT"
export PATH="~/.pub-cache/bin:$PATH"
export PATH="$PATH":"$HOME/.pub-cache/bin"
export PATH="~/.local/bin:$PATH"
export PATH="/home/passaglia/npm-global/bin:$PATH"
export PATH="/home/passaglia/.node_modules/bin:$PATH"
export npm_config_prefix="~/.node_modules"
export PATH="$PATH:/home/passaglia/Android"
export JAVA_HOME="/usr/lib/jvm/default-runtime"
#export SUDO_ASKPASS="/usr/bin/dpass.sh"
export BEMENU_BACKEND="wayland"
export _JAVA_AWT_WM_NONREPARENTING=1
export GTK_THEME="Adwaita:dark"
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export PATH="$PATH:~/dotnet/tools"
export DOTNET_ROOT="/usr/share/dotnet"
export MOZ_ENABLE_WAYLAND=1
#export XDEBUG_SESSION=1
#export SDL_VIDEODRIVER="wayland"
#export GDK_BACKEND="wayland"
#export MESA_DISK_CACHE_SINGLE_FILE=1
export KEYTIMEOUT=1
export BEMENU_OPTS="--fn 'Hack 14'\
	--tb '#568bbf'\
	--tf '#ffffff'\
	--fb '#568bbf'\
	--ff '#ffffff'\
	--cb '#568bbf'\
	--cf '#ffffff'\
	--nb '#0b1c2c'\
	--nf '#ffffff'\
	--hb '#f4ebeb'\
	--hf '#ffffff'\
	--sb '#568bbf'\
	--hf '#0B1C2C'\
	--sf '#0B1C2C'\
	--ab '#0b1c2c'\
	--monitor 'all'\
	--bottom
"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"
#ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dot whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting vi-mode)

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
##alias ls='lsd'
#alias l='ls -l'
#alias la='ls -a'
#alias lla='ls -la'
#alias lt='ls --tree'
alias att='sudo pacman -Syu'
alias testall='php artisan test'
alias atestall='./vendor/bin/phpunit'
alias testf='php artisan test --filter'
alias atestf='./vendor/bin/phpunit'
alias dots='/usr/bin/git --git-dir=/home/passaglia/.dotfiles --work-tree=/home/passaglia'
alias boostpf='sudo cpupower frequency-set -g performance'
alias mhd='udisksctl mount -b /dev/sdb6'
alias unmhd='udisksctl unmount -b /dev/sdb6'
alias blue='sudo systemctl start bluetooth.service'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# initialize sway on login
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  XKB_DEFAULT_LAYOUT=us exec sway
fi
