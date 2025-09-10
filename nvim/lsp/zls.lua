---@type vim.lsp.Config
return {
  cmd = { 'zls' },
  filetypes = { 'zig', 'zir', "zon" },
  root_markers = { 'zls.json', 'build.zig', "build.zig.zon", '.git' },
  workspace_required = false,

  settings = {
    zls = {
      enable_build_on_save = true,
      semantic_tokens = "partial",
    },
  },
}
