if status is-interactive
    # Commands to run in interactive sessions can go here
    # fish_vi_key_bindings  # fish vi modes
    function fish_mode_prompt; end
end

oh-my-posh init fish --config ~/.config/oh-my-posh/tomorrow-night-bright.json | source

set -gx EDITOR nvim

# pnpm
set -gx PNPM_HOME "/home/myles/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
