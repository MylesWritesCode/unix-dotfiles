# Instructions
# Install fish with the default setup by running this in bash:
# curl -L https://get.oh-my.fish | fish
# 
# Themes
# omf install theme bobthefish
# omf theme bobthefish
#
# References
# https://github.com/oh-my-fish/oh-my-fish

# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

