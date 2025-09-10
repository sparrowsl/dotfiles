return {
  filetypes = {
    -- "css",
    "javascript",
    "javascriptreact",
    "json",
    "jsonc",
    -- "svelte",
    "typescript",
    "typescript.tsx",
    "typescriptreact",
  },
  root_markers = { "biome.json", "biome.jsonc", 'package-lock.json', 'yarn.lock', 'pnpm-lock.yaml', 'bun.lockb', 'bun.lock', 'deno.lock' },
  single_file_support = true,
  cmd = { "biome", "lsp-proxy" },
}
