if status is-interactive
    fish_add_path -p $HOME/.local/bin
    set fish_greeting
    set fish_key_bindings fish_vi_key_bindings
    set -x EDITOR nvim
    set -x VISUAL nvim
    set -x MANPAGER 'nvim +Man!'

    function l
        clear; and eza --long --header --icons --git --all $argv
    end

    function c
        z $argv; and l
    end

    function grep
        command grep --color=auto $argv
    end

    function diff
        command diff --color=auto $argv
    end

    function u
        paru $argv
    end

    function f
        yazi $argv
    end

    function v
        nvim $argv
    end

    function t
        tmux $argv
    end

    function q
        exit
    end

    function gs
        git status
    end

    function gd
        git diff
    end

    function lzg
        lazygit
    end

    function lzd
        lazydocker
    end

    function cmp
        git add -A
        git commit -m "$argv"
        git push
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

    starship init fish | source
end
