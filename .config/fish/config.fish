if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Aliases
if [ -f $HOME/.config/fish/alias.fish ]
    source $HOME/.config/fish/alias.fish
end

# Load my scripts directory to PATH
if [ -d /home/dimas/my-scripts ]
    fish_add_path "$HOME/my-scripts"
end

# zoxide
zoxide init fish --cmd cd | source

set -gx GPG_TTY (tty)

# This function is adding directories to $PATH$
# Below is an example, the go bin is already set
#fish_add_path -a $HOME/go/bin
# kubectl krew
set -q KREW_ROOT; and fish_add_path $KREW_ROOT/.krew/bin; or fish_add_path $HOME/.krew/bin

# fnm
set -gx PATH /run/user/1000/fnm_multishells/74476_1723012021397/bin $PATH

set -gx FNM_LOGLEVEL info

set -gx FNM_ARCH x64

set -gx FNM_VERSION_FILE_STRATEGY local

set -gx FNM_COREPACK_ENABLED false

set -gx FNM_DIR "/home/dimas/.local/share/fnm"

set -gx FNM_MULTISHELL_PATH /run/user/1000/fnm_multishells/74476_1723012021397

set -gx FNM_NODE_DIST_MIRROR "https://nodejs.org/dist"

set -gx FNM_RESOLVE_ENGINES false

# Load .env.fish
set -g FISH_DOTENV_FILE "$__fish_config_dir/.env.fish"

function _fish_dotenv_load
    status --is-interactive || exit

    if not set -q __fish_dotenv_loaded
        if [ -f "$FISH_DOTENV_FILE" ]
            source "$FISH_DOTENV_FILE"
            set -g __fish_dotenv_loaded 1
        end
    end
end

_fish_dotenv_load
