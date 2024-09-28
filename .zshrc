.zshrc      


alias logtime='bash ~/time.sh'
alias cclean='bash ~/Cleaner_42.sh'
alias run='c++ *.cpp && ./a.out && rm a.out'
alias mk='make all clean'
gp() {
    now="$1"
    git add *
    git commit -m "$now"
    git push
}


alias ip="ifconfig | grep "inet" | grep "broadcast" | grep "10." | awk '{print \$2}' "
mds() {
    arg="$1"
    args="$2"
    int=0
    while [ $int -le $args ]; do
        mkdir "${arg}${int}"
        let int=$int+1
    done
}

thpp() {
        arg="$1"
        touch "${arg}.hpp" "${arg}.cpp"
}

fd(){
if [ $# -ne 1 ]; then
    echo "Usage: $0 <pid>"
    exit 1
fi

pid=$1

while true; do
    clear 
    echo "Open File Descriptors for Process $pid:"
    lsof -p $pid
    sleep 1
done
}

alias ttt=tmp;
#alias gp='now=$1 && git add * && git commit -m $now && git push'
alias cc='date +"%r"'
alias gc='git clone '
alias code='/Applications/Visual\ Studio\ Code.app/Contents/MacOS/Electron'
cclean  > /dev/null & 
