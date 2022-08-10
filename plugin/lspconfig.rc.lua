local status, nvim_lsp = pcall(require, 'lspconfig')
if (not status) then return end

local protocol = require('vim.lsp.protocol')
local capabilities = vim.lsp.protocol.make_client_capabilities()
local on_attach = function(client, bufnr)
  -- formatting
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_command [[augroup Format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
    vim.api.nvim_command [[augroup END]]
  end
end



nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  filetypes = { "typescript", "typescriptreact", "typescript.jsx", "javascript", "javascript.jsx", "javascriptreact" },
  cmd = { "typescript-language-server", "--stdio" }
}

nvim_lsp.jsonls.setup {
  on_attach = on_attach,
  capabilities = capabilities,


}

nvim_lsp.sumneko_lua.setup {
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = {
        -- Get the language server to recognize the 'vim' global
        global = { 'vim' }
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false
      }
    }

  }
}

nvim_lsp.emmet_ls.setup {
  filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less" },
  cmd = { "emmet-ls", "--stdio" }
}

nvim_lsp.tailwindcss.setup {}
