if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Aliases
if [ -f $HOME/.config/fish/alias.fish ]
    source $HOME/.config/fish/alias.fish
end

# Load my scripts directory to PATH
if [ -d /home/dimas/my-scripts ]
    set -gx PATH "$HOME/my-scripts" $PATH
end

# go bin
set -gx PATH $HOME/go/bin $PATH

# kubectl krew
set -q KREW_ROOT; and set -gx PATH $PATH $KREW_ROOT/.krew/bin; or set -gx PATH $PATH $HOME/.krew/bin

# zoxide
zoxide init fish --cmd cd | source

set -gx GPG_TTY (tty)

#fish_add_path -a /home/dimas/.foundry/bin

set -gx PATH $HOME/.cargo/bin/ $PATH

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

_fish_dotenv_load
