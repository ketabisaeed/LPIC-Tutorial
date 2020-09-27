cmd() {
    echo $1 | pv -qL 10
    read
    eval $1
}

hint() {
#    printf "\n"
    for ((i = 0 ; i < $3-$#1 ; i++)); do printf $2; done
    printf " $1 "
    for ((i = 0 ; i < $3-$#1 ; i++)); do printf $2; done
    printf "\n"
}

line() {
    for ((i = 0 ; i < $2-1 ; i++)); do printf "\n"; done
    for ((i = 0 ; i < $1 ; i++)); do printf "*"; done
    for ((i = 0 ; i < $2 ; i++)); do printf "\n"; done
}

#printf "\n*************************************\n"
#printf "***** $ mkdir <directory_name> ******"
#printf "\n*************************************\n\n$ "

line 70 1
hint "mkdir <directory_name>" " "
hint "make directory" 

#cmd "mkdir test"
