if status is-interactive
    fish_add_path -p $HOME/.local/bin
    set fish_greeting
    set fish_key_bindings fish_vi_key_bindings
    set -x EDITOR nvim
    set -x VISUAL nvim
    set -x MANPAGER 'nvim +Man!'

    function ls
        clear; and eza --long --header --icons --git --all $argv
    end

    function cd
        z $argv; and ls
    end

    function grep
        command grep --color=auto $argv
    end

    function diff
        command diff --color=auto $argv
    end

    function update
        sudo pacman -Syu $argv
    end

    function f
        yazi $argv
    end

    function v
        nvim $argv
    end

    function cheat
        curl cheat.sh/$argv[1]
    end

    # https://wiki.archlinux.org/title/Fzf#Pacman
    function install
        pacman -Slq | sk --multi --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S
    end

    function uninstall
        pacman -Qq | sk --multi --preview 'pacman -Qi {1}' | xargs -ro sudo pacman -Rns
    end

    # https://wiki.archlinux.org/title/Pacman/Tips_and_tricks#Browsing_packages
    function detail
        pacman -Slq | sk --preview 'pacman -Si {}'
    end

    atuin init fish | source

    zoxide init fish | source
end
