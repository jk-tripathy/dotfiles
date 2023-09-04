dirname="${PWD/\/home\/jkt\///}"
projname=$(cut -d'/' -f2 <<<"$dirname")
subdir=$(cut -d'/' -f3- <<<"$dirname")
rsync -avuzh --exclude logs ~/$projname/ dfki:$projname/
# if [ "$1" == "-v" ]
# then
#     ssh im "cd project/$projname; export PYTHONPATH=.:$PYTHONPATH; venv/bin/python ./$subdir/$2; exit"
# else
#     ssh im "cd project/$projname; export PYTHONPATH=.:$PYTHONPATH; python3 .$subdir/$1; exit"
# fi
        

