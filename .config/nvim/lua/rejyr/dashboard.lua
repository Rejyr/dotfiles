-- starting screen
local starter = require 'mini.starter'
starter.setup {
    evaluate_single = true,
    footer = os.date(),
    items = {
        starter.sections.recent_files(5, false, false),
        starter.sections.builtin_actions(),
    },
}
