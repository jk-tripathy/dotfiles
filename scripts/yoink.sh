#!/bin/sh

yoink () {
    projname="${PWD/\/home\/jkt\/Projects\//}"
    rsync -avuzhL --exclude 'logs' dfki:$projname/ ~/Projects/$projname/
}
# if [ "$1" == "-v" ]
# then
#     ssh im "cd project/$projname; export PYTHONPATH=.:$PYTHONPATH; venv/bin/python ./$subdir/$2; exit"
# else
#     ssh im "cd project/$projname; export PYTHONPATH=.:$PYTHONPATH; python3 .$subdir/$1; exit"
# fi
