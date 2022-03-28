if [ -z "$1" ]
then
    echo "Please input the PATH"
else
    cd $1

    for f in *
    do
        echo -n $f >> filesize.txt
        echo -n " " >> filesize.txt
        stat -c %s $f >> filesize.txt
    done
fi
