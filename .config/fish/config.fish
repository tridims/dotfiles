if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Aliases
if [ -f $HOME/.config/fish/alias.fish ] 
	source $HOME/.config/fish/alias.fish
end

if [ -d $HOME/my-scripts ]
    set -gx PATH "$HOME/my-scripts" $PATH
end

# pnpm
set -gx PNPM_HOME "/home/dimas/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# zoxide
zoxide init fish --cmd cd | source

set -gx GPG_TTY (tty)

fish_add_path -a /home/dimas/.foundry/bin

set -gx PATH $HOME/.cargo/bin/ $PATH

# Fabric configuration
set -gx PATH $HOME/.local/bin $PATH
set -gx OPENAI_BASE_URL "https://api.groq.com/openai/v1"
set -gx DEFAULT_MODEL "llama3-70b-8192"
# secret loaded from .env.fish file

# Fabric shortcut
function rate-yt
    yt $argv[1] | fabric --stream -m models/gemini-1.5-pro-latest --pattern rate_content
end

function summarize-yt
    yt $argv[1] | fabric --stream -m models/gemini-1.5-pro-latest --pattern summarize
end

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
