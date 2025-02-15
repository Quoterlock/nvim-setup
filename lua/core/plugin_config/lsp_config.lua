require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {"lua_ls", "csharp_ls"}
})

local on_attach = function(_, _)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
  
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references,{})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

local cmp = require("cmp")

cmp.setup({
  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
    ["<Tab>"] = cmp.mapping.select_next_item(),
    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
  }),
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "luasnip" },
    { name = "buffer" },
    { name = "path" },
  }),
})

-- Enable LSP autocomplete
local capabilities = require("cmp_nvim_lsp").default_capabilities()
require('lspconfig').csharp_ls.setup {
  capabilities = require('cmp_nvim_lsp').default_capabilities(),
  on_attach = on_attach,
}
require('lspconfig').lua_ls.setup{}
require('lspconfig').dartls.setup({
    capabilities = capabilities,
    cmd = { "/home/admin/development/flutter/bin/cache/dart-sdk/bin/dart", "language-server",},
    filetypes = { 'dart' },
    init_options = {
        closingLabels = true,
        flutterOutline = true,
        onlyAnalyzeProjectsWithOpenFiles = true,
        suggestFromUnimportedLibraries = true
    },
    settings = {
        dart = {
            completeFunctionCalls = true,
            showTodos = true,
        },
    },
    on_attach = on_attach,
})

--[[
require("lspconfig").lua_ls.setup {
  on_attach = on_attach
}
require("lspconfig").omnisharp.setup {
    on_attach = on_attach,
    cmd = {'C:\\Users\\Admin\\AppData\\Local\\nvim-data\\mason\\packages\\omnisharp\\libexec\\OmniSharp.exe',
        '--languageserver', '--hostPID', tostring(vim.fn.getpid())
    }
}]]
