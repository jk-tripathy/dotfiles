dirname="${PWD/\/home\/jkt\///}"
projname=$(cut -d'/' -f2 <<<"$dirname")
subdir=$(cut -d'/' -f3- <<<"$dirname")
rsync -avuzhL --exclude models --exclude=*.ckpt dfki:$projname/ ~/$projname/
# if [ "$1" == "-v" ]
# then
#     ssh im "cd project/$projname; export PYTHONPATH=.:$PYTHONPATH; venv/bin/python ./$subdir/$2; exit"
# else
#     ssh im "cd project/$projname; export PYTHONPATH=.:$PYTHONPATH; python3 .$subdir/$1; exit"
# fi
        

