# ZSH Theme - Preview: http://gyazo.com/8becc8a7ed5ab54a0262a470555c3eed.png
local return_code='%(?..%{$fg[red]%}%? %{$reset_color%})'

# Username and hostname
local user_host=''
if [[ $UID -eq 0 ]]; then
  user_host='%{$fg_bold[red]%}%n@%m %{$reset_color%}'
elif [[ $USER = $ZSH_LOCAL_USER ]]; then
  user_host='%{$fg_bold[green]%}%n@%m %{$reset_color%}'
else
  user_host='%{$fg_bold[magenta]%}%n@%m %{$reset_color%}'
fi

# Current directory.
local current_dir='%{$fg_bold[blue]%}%~ %{$reset_color%}'

# Current version of Ruby
local ruby_version=''
local get_ruby_version=''
local test_ruby_files='[[ -f Gemfile || -f Rakefile || -n *.rb(#qN) ]]'
if which rvm-prompt &> /dev/null; then
  get_ruby_version='%{$fg[red]%}‹$(rvm-prompt i v g)› %{$reset_color%}'
elif which chruby &> /dev/null; then
  get_ruby_version='%{$fg[red]%}‹$(chruby | sed -n -e "s/ \* //p")› %{$reset_color%}'
elif which rbenv &> /dev/null; then
  get_ruby_version='%{$fg[red]%}‹$(rbenv version | sed -e "s/ (set.*$//")› %{$reset_color%}'
fi
if [[ -n get_ruby_version ]]; then
  ruby_version="\$(${test_ruby_files} && echo -n \"${get_ruby_version}\")"
fi

# Current version of NodeJS.
local nodejs_version=''
local get_nodejs_version=''
local test_nodejs_files='[[ -f package.json || -d node_modules || -n *.js(#qN) ]]'
if which nvm_ls_current &> /dev/null; then
  get_nodejs_version='%{$fg[green]%}‹node-${$(nvm_ls_current)#*v*}› %{$reset_color%}'
fi
if [[ -n get_nodejs_version ]]; then
  nodejs_version="\$(${test_nodejs_files} && echo -n \"${get_nodejs_version}\")"
fi

# Git status: collect indicators, git branch and pring string.
local git_branch='$(git_prompt_info)'

PROMPT="┌ ${user_host}${current_dir}${ruby_version}${nodejs_version}${git_branch}
└ %B$%b "
RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="› %{$reset_color%}"
