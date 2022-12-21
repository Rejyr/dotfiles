-- starting screen
local starter = require 'mini.starter'
starter.setup {
    evaluate_single = true,
    footer = os.date(),
    items = {
        { name = 'Select Session', action = 'SearchSession', section = 'Session Manager' },
        { name = 'Restore Session', action = 'RestoreSession', section = 'Session Manager' },
        starter.sections.recent_files(5, false, false),
        starter.sections.builtin_actions(),
    },
}
