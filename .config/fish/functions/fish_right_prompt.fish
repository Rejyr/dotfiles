function fish_right_prompt
        set -g __fish_git_prompt_showdirtystate 1
        set -g __fish_git_prompt_showuntrackedfiles 1
        # set -g __fish_git_prompt_showupstream informative
        # set -g __fish_git_prompt_showcolorhints 1
        # set -g __fish_git_prompt_use_informative_chars 1

        set -g __fish_git_prompt_char_dirtystate "*"
        set -g __fish_git_prompt_char_untrackedfiles "?"

        function _prompt_greyout
            echo -n (set_color brgrey)$argv[1](set_color normal)
        end

        # The git prompt's default format is ' (%s)'.
        # We don't want the leading space.
        set -l vcs (set_color brgrey)(fish_vcs_prompt '%s' 2>/dev/null)(set_color normal)

        set -l d (date "+%H:%M:%S")

        set -l duration "$cmd_duration$CMD_DURATION"
        if test $duration -gt 100
                set duration (math $duration / 1000)s
        else
                set duration
        end

        set -q VIRTUAL_ENV_DISABLE_PROMPT
        or set -g VIRTUAL_ENV_DISABLE_PROMPT true
        set -q VIRTUAL_ENV
        and set -l venv (string replace -r '.*/' '' -- "$VIRTUAL_ENV")

        set_color normal
        string join " " -- (_prompt_greyout $venv) (_prompt_greyout $duration) (_prompt_greyout $vcs) (_prompt_greyout $d)
end
