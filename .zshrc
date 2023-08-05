# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

if [ "$TERM" = "xterm-kitty" ]; then 
  source ~/.powerlevel10k/powerlevel10k.zsh-theme
elif [ "$TERM" = "linux" ]; then
#  exec Hyprland
#  exec startxfce4
  ~/bin/wmswitcher
else
  echo "New Terminal"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export ZDOTDIR=$HOME/.config/zsh
HISTFILE=~/.zsh_history
HISTSIZE=2000
SAVEHIST=2000
setopt SHARE_HISTORY

# Environment variables set everywhere
export EDITOR="nvim"
export TERMINAL="kitty"
export BROWSER="librewolf"

# Turn off beeps
unsetopt BEEP

# Useful Functions
source "$ZDOTDIR/zsh-functions"

# Normal files to source
zsh_add_file "zsh-aliases"
# zsh_add_file "zsh-exports"

# Plugins
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
zsh_add_plugin "joshskidmore/zsh-fzf-history-search"
# zsh_add_plugin "hlissner/zsh-autopair"
# zsh_add_completion "esc/conda-zsh-completion" false
# For more plugins: https://github.com/unixorn/awesome-zsh-plugins
# More completions https://github.com/zsh-users/zsh-completions

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

