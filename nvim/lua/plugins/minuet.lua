return {
  {
    'milanglacier/minuet-ai.nvim',
    config = function()
      require('minuet').setup {
        notify = 'debug',
        provider = 'codestral',
        request_timeout = 2.5,
        -- throttle = 1500, -- Increase to reduce costs and avoid rate limits
        -- debounce = 600, -- Increase to reduce costs and avoid rate limits
        provider_options = {
          codestral = {
            optional = {
              max_tokens = 256,
              stop = { '\n\n' },
            },
          },
        }
      }
    end
  },
  {
    'saghen/blink.cmp',
    optional = true,
    opts = {
      keymap = {
        ['<A-y>'] = {
          function(cmp)
            cmp.show { providers = { 'minuet' } }
          end,
        },
      },
      sources = {
        -- if you want to use auto-complete
        default =  { 'minuet' },
        providers = {
          minuet = {
            name = 'minuet',
            module = 'minuet.blink',
            score_offset = 100,
          },
        },
      },
    },
  }
}
