#
## about:Displays a simple prompt with Git info
#

# ~/bin  master  ✚2 ✓ $

. ${bash_config_themes_folder}/lib/git-status.theme.bash

if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
  PS1="\h:\w \`if [ \$? = 0 ]; then echo ${green_color}✓${reset_color}; else echo ${red_color}✗${reset_color}; fi\` \$ "
else
  PS1="\w \`_git_branch\`\`if [ \$? = 0 ]; then echo ${green_color}✓${reset_color}; else echo ${red_color}✗${reset_color}; fi\` \$ "
fi
