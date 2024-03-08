if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Aliases
if [ -f $HOME/.config/fish/alias.fish ] 
	source $HOME/.config/fish/alias.fish
end

# pnpm
set -gx PNPM_HOME "/home/dimas/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
