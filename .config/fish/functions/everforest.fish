function everforest
    #!/usr/bin/fish

    # Everforest Fish shell theme
    # A template was taken and modified from Tokyonight:
    # https://github.com/folke/tokyonight.nvim/blob/main/extras/fish_tokyonight_night.fish
    set -l foreground D3C6AA
    set -l selection 425047
    set -l comment 859289
    set -l red E67E80
    set -l orange E69875
    set -l yellow DBBC7F
    set -l green A7C080
    set -l aqua 83C092
    set -l blue 7FBBB3
    set -l pink D27E99
    set -l purple D699B6

    # Syntax Highlighting Colors
    set -g fish_color_normal $foreground
    set -g fish_color_command $blue
    set -g fish_color_keyword $pink
    set -g fish_color_quote $yellow
    set -g fish_color_redirection $foreground
    set -g fish_color_end $orange
    set -g fish_color_error $red
    set -g fish_color_param $aqua
    set -g fish_color_comment $comment
    set -g fish_color_selection --background=$selection
    set -g fish_color_search_match --background=$selection
    set -g fish_color_operator $green
    set -g fish_color_escape $pink
    set -g fish_color_autosuggestion $comment

    # Completion Pager Colors
    set -g fish_pager_color_progress $comment
    set -g fish_pager_color_prefix $blue
    set -g fish_pager_color_completion $foreground
    set -g fish_pager_color_description $comment
end
