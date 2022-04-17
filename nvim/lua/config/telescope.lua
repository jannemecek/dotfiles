require('telescope').setup {
    pickers = {
        find_files = {
        hidden = true
        }
    },
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        }
    }
}

require('telescope').load_extension('fzf')
require('telescope').setup{  defaults = { file_ignore_patterns = { "node_modules", ".git" }} }
