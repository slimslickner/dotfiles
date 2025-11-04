# Activate Python venv when entering a directory containing a ".venv" subdirectory
activate_venv_on_cd() {
    local venv_dir=".venv"
    
    # Deactivate if we had a venv and we've moved outside its tree
    if [[ -n "$VIRTUAL_ENV" ]]; then
        local venv_parent="$(dirname "$VIRTUAL_ENV")"
        # Case-insensitive comparison for macOS
        local pwd_lower="${PWD:l}"
        local venv_parent_lower="${venv_parent:l}"
        
        if [[ "$pwd_lower" != "$venv_parent_lower" ]] && [[ "$pwd_lower" != "$venv_parent_lower"/* ]]; then
            echo "Deactivated Python Environment"
            deactivate
        fi
    fi
    
    # Only try to activate if we're not already in a venv
    if [[ -z "$VIRTUAL_ENV" ]]; then
        if [[ -d "$PWD/$venv_dir" ]]; then
            source "$PWD/$venv_dir/bin/activate"
            echo "Activated Python Environment"
        fi
    fi
}
 
autoload -U add-zsh-hook
add-zsh-hook chpwd activate_venv_on_cd
