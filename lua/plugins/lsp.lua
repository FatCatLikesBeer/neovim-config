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
      },
    },
  },
}
