export TMUX_THEME="nord"

export SD_ROOT=${HOME}/Developer/schooldesk/sd/sd
export SD_ROOT2=${HOME}/projects/schooldesk/sd

# Activate venv for specific projects or git repos with .venv
function activate_project_venv() {
    # Use this pattern for specific project
    # Activate SD_ROOT virtual env if in that directory or a subdirectory
    if [[ ( "$PWD" == "$SD_ROOT"* && "$VIRTUAL_ENV" != "$SD_ROOT/.venv" ) \
       || ( "$PWD" == "$SD_ROOT2"* && "$VIRTUAL_ENV" != "$SD_ROOT2/.venv" ) ]]; then
	[[ -n "$VIRTUAL_ENV" ]] && deactivate
	echo "Activating venv"
	source "$SD_ROOT/.venv/bin/activate"
	return
    fi

    # Use this pattern for a more general identification
    # Auto activate venv in git repo (More automated then doing spefic projects, like for SD_ROOT)
    local git_dir proj_root venv_path
    git_dir=$(git rev-parse --git-dir 2>/dev/null) || return
    proj_root="${git_dir%/.git}"
    venv_path="$proj_root/.venv"

    if [[ -d "$venv_path" && "$VIRTUAL_ENV" != "$venv_path" ]]; then
	[[ -n "$VIRTUAL_ENV" ]] && deactivate
	echo "Activating venv"
	source "$venv_path/bin/activate"
	return
    fi

    # Deactivate if we've left all project roots
    if [[ -n "$VIRTUAL_ENV" ]]; then
	# Verify we are not in any of the project roots
	if [[ ( "$PWD" != $SD_ROOT* ) || ( "$PWD" != $SD_ROOT2* ) ]]; then
	    echo "WHY IS THIS NOT WORKING!"
	    # Verify we're not in a git repo with .venv
	    if ! git rev-parse --git-dir &>/dev/null || [[ ! -d "$(git rev-parse --show-toplevel 2>/dev/null)/.venv" ]]; then
		deactivate
	    fi
	fi
    fi
    # elif [[ "$PWD" != "$SD_ROOT"* && "$VIRTUAL_ENV" == "$SD_ROOT"/.venv ]]; then
    #     deactivate
    # fi

}

# Override cd to check for venv activation
function cd() {
    builtin cd "$@" || return
    activate_project_venv
}

# Run on shell startup, if already in project directory
activate_project_venv

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# Paste at the end of zsh
# install zoxide first
# eval "$(zoxide init zsh)"

