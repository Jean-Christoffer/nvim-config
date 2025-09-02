local on_attach = require("utils.lsp").on_attach
local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Language Server Protocol (LSP)
require("lsp.lua_ls")(lspconfig, capabilities, on_attach)
require("lsp.jsonls")(lspconfig, capabilities, on_attach)
require("lsp.ts_ls")(lspconfig, capabilities, on_attach)
require("lsp.bashls")(lspconfig, capabilities, on_attach)
require("lsp.dockerls")(lspconfig, capabilities, on_attach)
require("lsp.emmet_ls")(lspconfig, capabilities, on_attach)
require("lsp.yamlls")(lspconfig, capabilities, on_attach)
require("lsp.tailwindcss")(lspconfig, capabilities, on_attach)

-- Linters & Formatters
require("lsp.efm-langserver")(lspconfig, capabilities, on_attach)
