function fish_prompt
        set -l last_status $status

        set -l normal (set_color normal)
        set -l usercolor (set_color $fish_color_user)

        set -l delim '$'
        fish_is_root_user; and set delim "#"

        set -l cwd (set_color $fish_color_cwd)

        set -l prompt_status
        if test $last_status -ne 0
            # Prompt status only if it's not 0
            set prompt_status (set_color $fish_color_status)" $last_status$normal"
            # red prompt character for error
            set delim (set_color -o red)$delim(set_color normal)
        else
            # green prompt for normal
            set delim (set_color -o green)$delim(set_color normal)
        end

        # Only show host if in SSH or container
        # Store this in a global variable because it's slow and unchanging
        if not set -q prompt_host
                set -g prompt_host ""
                if set -q SSH_TTY
                        or begin
                                command -sq systemd-detect-virt
                                and systemd-detect-virt -q
                        end
                        set prompt_host $usercolor$USER$normal@(set_color $fish_color_host)$hostname$normal":"
                end
        end

        # Shorten pwd if prompt is too long
        set -l pwd (set_color -o blue)(prompt_pwd)(set_color normal)

        echo -s $prompt_host $cwd $pwd $normal $prompt_status
        echo -n -s $delim ' '
end
