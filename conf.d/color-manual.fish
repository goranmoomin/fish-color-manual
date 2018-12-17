set -x LESS_TERMCAP_md (printf "\e[01;38;5;74m")
set -x LESS_TERMCAP_mb (printf "\033[01;31m")
set -x LESS_TERMCAP_me (printf "\033[0m")

set -x LESS_TERMCAP_ue (printf "\e[0m")
set -x LESS_TERMCAP_us (printf "\e[04;38;5;146m")

set -x LESS_TERMCAP_se (printf "\033[0m")
set -x LESS_TERMCAP_so (printf "\033[01;44;33m")

set -l name (basename (status -f) .fish){_uninstall}

function $name --on-event $name
    set -e LESS_TERMCAP_md
    set -e LESS_TERMCAP_mb
    set -e LESS_TERMCAP_me

    set -e LESS_TERMCAP_ue
    set -e LESS_TERMCAP_us

    set -e LESS_TERMCAP_se
    set -e LESS_TERMCAP_so
end
