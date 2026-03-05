source /usr/share/cachyos-fish-config/cachyos-config.fish

zoxide init fish | source
source (/usr/bin/starship init fish --print-full-init | psub)

function ls --wraps=eza
    eza --icons --group-directories-first -1  $argv
end

function ll --wraps=eza
    eza -l --icons --group-directories-first --git --smart-group -h --git-repos -a $argv
end
