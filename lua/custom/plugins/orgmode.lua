return {
  {
    'nvim-orgmode/orgmode',
    dependencies = {
      { 'nvim-treesitter/nvim-treesitter', lazy = true },
    },
    event = 'VeryLazy',
    config = function()
      -- Load treesitter grammar for org
      require('orgmode').setup_ts_grammar()

      -- Setup treesitter
      require('nvim-treesitter.configs').setup {
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = { 'org' },
        },
        ensure_installed = { 'org' },
      }

      -- Setup orgmode
      require('orgmode').setup {
        org_agenda_files = '~/Sync/notes/Notes/Agenda/**/*',
        org_default_notes_file = '~/Sync/notes/Notes/notes.org',
      }
    end,
  },
}
