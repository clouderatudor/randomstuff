stdbuf -oL inotifywait -m --format "%w%f"  -e close_write -r testdir/  | 
while read path ; do 
    echo "Copying $path to:"  
    cat targets | 
    while read -r name target ; do 
        echo "...$name:"
        scp $path $target 
    done
done
