return {
    'nvim-orgmode/orgmode',
    dependencies = { 'nvim-orgmode/org-bullets.nvim' },
    config = function()
        -- Setup orgmode
        require('orgmode').setup {
            org_agenda_files = {'~/org/**/*'}, -- Load all org files in org directory
            org_default_notes_file = '~/org/notes.org', -- Default notes file for new entries
            org_todo_keywords = {'TODO', 'IN-PROGRESS', 'DONE'}, -- Define todo states
            org_capture_templates = {
                t = {
                    description = 'Task',
                    template = '* TODO %?\n  %U\n  %a',
                    target = '~/org/refile.org',
                },
                n = {
                    description = 'Note',
                    template = '* %?\n  %U\n  %a',
                    target = '~/org/notes.org',
                },
            },
            org_bullets = {
                symbols = { '◉', '◎', '○' }, -- Custom bullet symbols
            },
        }

        -- Setup org-bullets
        require('org-bullets').setup {
            symbols = {'◉', '◈', '◊', '○', '●'},
        }

        -- Keybindings for Org mode actions
        local opts = { noremap = true, silent = true }
        vim.api.nvim_set_keymap('n', '<leader>oa', ':OrgAgenda<CR>', opts) -- Open Agenda
        vim.api.nvim_set_keymap('n', '<leader>oc', ':OrgCapture<CR>', opts) -- Open Capture
        vim.api.nvim_set_keymap('n', '<leader>ot', ':OrgTodo<CR>', opts) -- Show Todos
    end
}
