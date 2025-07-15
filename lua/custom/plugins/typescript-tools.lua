-- list of vim cmd added
-- TSToolsOrganizeImports - sorts and removes unused imports
-- TSToolsSortImports - sorts imports
-- TSToolsRemoveUnusedImports - removes unused imports
-- TSToolsRemoveUnused - removes all unused statements
-- TSToolsAddMissingImports - adds imports for all statements that lack one and can be imported
-- TSToolsFixAll - fixes all fixable errors
-- TSToolsGoToSourceDefinition - goes to source definition (available since TS v4.7)
-- TSToolsRenameFile - allow to rename current file and apply changes to connected files
-- TSToolsFileReferences - find files that reference the current file (available since TS v4.2)
return {
  'pmizio/typescript-tools.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'neovim/nvim-lspconfig',
  },
  opts = {
    on_attach = function(client, bufnr)
      client.server_capabilities.documentFormattingProvider = false
      client.server_capabilities.documentRangeFormattingProvider = false
    end,
    settings = {
      separate_diagnostic_server = true,
      publish_diagnostic_on = 'insert_leave',
      expose_as_code_action = 'all',
      code_lens = 'off',
    },
  },
}
