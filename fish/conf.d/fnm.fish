# To use fnm as the node version manager, first install it:
# curl -fsSL https://fnm.vercel.app/install | bash
#
# Then, set up the fnm path:
# set -U fish_user_paths ~/.fnm $fish_user_paths
#
# Finally, add shell completions
# fnm completions --shell fish
#
# References: https://github.com/Schniz/fnm

if test -d ~/.fnm
  fnm env | source
end