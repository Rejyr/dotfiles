function attach_zellij
    set sessions "$(zellij ls)"
    set new_session "(create new session)"
    set none "(no session)"
    set session ( printf "$new_session\n$none\n$sessions" | fzf --prompt "zellij session: " | sed 's/ (current)//' )


    if test $session = $new_session
        read -P "enter new session name: " session
    end

    if test $session = $none
        return
    end

    exec zellij attach --create $session
end
