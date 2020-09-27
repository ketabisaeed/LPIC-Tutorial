cmd() {
    printf "\n $ "
    printf "$1 " | pv -qL 10
    read
    printf "\n output:\n "
    eval $1
}

hint() {
    echo " - $1"
}

line() {
    printf "\n-----------\n\n"
}

printf "\n"
hint "rmdir <directory_name>" " "
hint "remove directory" 
cmd "rmdir test"

#line

#hint "ls : list everything in the directory"
#cmd "ls"
