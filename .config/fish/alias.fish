alias open-skripsi="code ~/skripsi/Used\ Docs/Latex-Skripsi"

# alias fish private
alias fp="fish --private"

alias ls="eza --color=auto"
alias la="eza -a"
#alias ll="eza -alhF"
alias ll="eza -alh"
alias l="eza"
alias l.="eza -A | grep -E '^\.'"
alias listdir="eza -d */ > list"

alias cat="bat"
alias lg="lazygit"

alias rl="sudo systemctl reload"

# kubernetes
alias k="kubectl"

# ani-cli
alias animel="ani-cli -q 480p"
alias anime="ani-cli -q 720p"
alias animedl="ani-cli -q 720p -d"

# nvidia
alias nvf="sudo nvidia-smi -i 0000:01:00.0 -pm 0 && sudo nvidia-smi drain -p 0000:01:00.0 -m 1"
alias nvn="sudo nvidia-smi drain -p 0000:01:00.0 -m 0 && sudo nvidia-smi -i 0000:01:0.0 -pm 1"

# show the list of packages that need this package - depends mpv as example
function function_depends
    set search $argv[1]
    sudo pacman -Sii $search | grep "Required" | sed -e "s/Required By     : //g" | sed -e "s/  /\n/g"
end

alias depends='function_depends'

## Colorize the grep command output for ease of use (good for log files)##
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"

# Color output of ip
alias ip="ip -color"

#readable output
alias df="df -h"

#free
alias free="free -mt"

#youtube download
alias yta-aac="yt-dlp --extract-audio --audio-format aac"
alias yta-best="yt-dlp --extract-audio --audio-format best"
alias yta-flac="yt-dlp --extract-audio --audio-format flac"
alias yta-mp3="yt-dlp --extract-audio --audio-format mp3"
alias ytv-best="yt-dlp -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' --merge-output-format mp4"
alias ytv-comfy="yt-dlp -f 'bestvideo[height<=1080][ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' --merge-output-format mp4"
alias ytv-720="yt-dlp -f 'bestvideo[height<=720][ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' --merge-output-format mp4"

#get fastest mirrors in your neighborhood
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 30 --number 10 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector --latest 30 --number 10 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 30 --number 10 --sort age --save /etc/pacman.d/mirrorlist"
#our experimental - best option for the moment
alias mirrorx="sudo reflector --age 6 --latest 20  --fastest 20 --threads 5 --sort rate --protocol https --save /etc/pacman.d/mirrorlist"
alias mirrorxx="sudo reflector --age 6 --latest 20  --fastest 20 --threads 20 --sort rate --protocol https --save /etc/pacman.d/mirrorlist"
alias ram="rate-mirrors --allow-root --disable-comments arch | sudo tee /etc/pacman.d/mirrorlist"
alias rams="rate-mirrors --allow-root --disable-comments --protocol https arch  | sudo tee /etc/pacman.d/mirrorlist"

#Cleanup orphaned packages
alias cleanup="sudo pacman -Rns (pacman -Qtdq)"

# This will generate a list of explicitly installed packages
alias list="sudo pacman -Qqe"
#This will generate a list of explicitly installed packages without dependencies
alias listt="sudo pacman -Qqet"
# list of AUR packages
alias listaur="sudo pacman -Qqem"
# add > list at the end to write to a file

#get the error messages from journalctl
alias jctl="journalctl -p 3 -xb"

#btrfs aliases
alias btrfsfs="sudo btrfs filesystem df /"
alias btrfsli="sudo btrfs su li / -t"
