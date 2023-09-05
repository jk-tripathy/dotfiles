#!/bin/sh

work () {
    if [[ $1 == "-l" ]]
    then
        ls ~/projects/ 
    else
        cd $1
        projname=${PWD##*/}
        if [[ -d ~/.pyenvs/$projname ]]
        then
            source ~/.pyenvs/$projname/bin/activate
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
