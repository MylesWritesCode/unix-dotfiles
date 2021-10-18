if status is-interactive
  # Commands to run in interactive sessions can go here
end

function fish_right_prompt
  # Intentionally left blank; This is now being taken care of by oh-my-posh.
end

# Commands that will always be run, regardless of interactivity
oh-my-posh --init --shell fish --config ~/.config/windows-terminal/writescode.json | source
set -g theme_nerd_fonts yes
set -g theme_color_scheme nord
# set -g theme_color_scheme zenburn