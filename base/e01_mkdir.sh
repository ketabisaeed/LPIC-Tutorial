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
hint "mkdir <directory_name>" " "
hint "make directory" 
cmd "mkdir test"

#line

#hint "ls : list everything in the directory"
#cmd "ls"
