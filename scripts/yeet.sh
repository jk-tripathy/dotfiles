#!/bin/sh

yeet () {
    projname="${PWD/\/home\/jkt\/Projects\//}"
    rsync -avuzh --exclude logs --exclude models ~/Projects/$projname/ dfki:$projname/
}

# if [ "$1" == "-v" ]
# then
#     ssh im "cd project/$projname; export PYTHONPATH=.:$PYTHONPATH; venv/bin/python ./$subdir/$2; exit"
# else
#     ssh im "cd project/$projname; export PYTHONPATH=.:$PYTHONPATH; python3 .$subdir/$1; exit"
# fi
