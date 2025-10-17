return {
  -- commented out because 'mason-registry' does not have a .register method
  -- {
  --   "williamboman/mason.nvim",
  --   opts = function(_, opts)
  --     local sourcekit_lsp = {
  --       name = "sourcekit-lsp",
  --       type = "lsp",
  --       install_script = function()
  --         return true
  --       end,
  --       bin = "sourcekit-lsp",
  --       homepage = "https://github.com/apple/sourcekit-lsp",
  --     }
  --     require('mason-registry').register(sourcekit_lsp);
  --   end,
  -- },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Swift Stuff
        sourcekit = {
          cmd = { "sourcekit-lsp" },
          filetypes = { "swift" },
        },
        -- PHP stuff
        intelephense = {
          root_dir = function()
            local cwd = vim.fn.getcwd()
            -- print(cwd)
            return cwd
          end,
        },
        -- -- TypeScript && JavaScript stuff
        -- denols = {
        --   root_dir = require("lspconfig.util").root_pattern("deno.json", "deno.jsonc", ".git"),
        --   init_options = {
        --     lint = true,
        --     unstable = true,
        --   },
        -- },
        -- ts_ls = {
        --   root_dir = function(fname)
        --     local util = require("lspconfig.util")
        --     local deno_root = util.root_pattern("deno.json", "deno.jsonc")(fname)
        --     if deno_root then
        --       return nil -- Skip tsserver if deno config is found
        --     end
        --     return vim.fn.getcwd() -- fallback to single file support
        --   end,
        --   single_file_support = true,
        -- },
      },
    },
  },
}
