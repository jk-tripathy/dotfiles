#!/bin/sh

_work_comp() {
    local cur
    local files
    files=$(ls ~/Projects)
    COMPREPLY=( $(compgen -W "${files}" -- "${cur}") )
}
complete -F _work_comp work

work () {
    if [[ $1 == "-l" ]]
    then
        ls ~/Projects/ 
    else
        cd ~/Projects/$1
        projname=${PWD##*/}
        if [[ -d ~/.pyenvs/$projname ]]
        then
            source ~/.pyenvs/$projname/bin/activate
            echo "Activated pyenv"
        else
            if [[ $2 == "-v" ]]
            then 
                echo "No pyenv found"
                echo "Creating pyenv"
                if [[ $# -eq 3 ]]
                then
                    python$3 -m venv ~/.pyenvs/$projname
                else
                    python -m venv ~/.pyenvs/$projname
                fi
                source ~/.pyenvs/$projname/bin/activate
            fi
        fi
    fi
}
