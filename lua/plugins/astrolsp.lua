-- AstroLSP allows you to customize the features in AstroNvim's LSP configuration engine
-- Configuration documentation can be found with `:h astrolsp`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts
  opts = {
    -- Configuration table of features provided by AstroLSP
    features = {
      autoformat = true, -- enable or disable auto formatting on start
      codelens = true, -- enable/disable codelens refresh on start
      inlay_hints = false, -- enable/disable inlay hints on start
      semantic_tokens = true, -- enable/disable semantic token highlighting
    },
    -- customize lsp formatting options
    formatting = {
      -- control auto formatting on save
      format_on_save = {
        enabled = true, -- enable or disable format on save globally
        allow_filetypes = { -- enable format on save for specified filetypes only
          -- "go",
        },
        ignore_filetypes = { -- disable format on save for specified filetypes
          -- "python",
        },
      },
      disabled = { -- disable formatting capabilities for the listed language servers
        -- disable lua_ls formatting capability if you want to use StyLua to format your lua code
        -- "lua_ls",
      },
      timeout_ms = 1000, -- default format timeout
      -- filter = function(client) -- fully override the default formatting function
      --   return true
      -- end
    },
    -- enable servers that you already have installed without mason
    servers = {
      -- "pyright"
    },
    -- customize language server configuration options passed to `lspconfig`
    ---@diagnostic disable: missing-fields
    config = {
      -- clangd = { capabilities = { offsetEncoding = "utf-8" } },
    },
    -- customize how language servers are attached
    handlers = {
      -- a function without a key is simply the default handler, functions take two parameters, the server name and the configured options table for that server
      -- function(server, opts) require("lspconfig")[server].setup(opts) end

      -- the key is the server that is being setup with `lspconfig`
      -- rust_analyzer = false, -- setting a handler to false will disable the set up of that language server
      -- pyright = function(_, opts) require("lspconfig").pyright.setup(opts) end -- or a custom handler function can be passed
    },
    -- Configure buffer local auto commands to add when attaching a language server
    autocmds = {
      -- first key is the `augroup` to add the auto commands to (:h augroup)
      lsp_document_highlight = {
        -- Optional condition to create/delete auto command group
        -- can either be a string of a client capability or a function of `fun(client, bufnr): boolean`
        -- condition will be resolved for each client on each execution and if it ever fails for all clients,
        -- the auto commands will be deleted for that buffer
        cond = "textDocument/documentHighlight",
        -- cond = function(client, bufnr) return client.name == "lua_ls" end,
        -- list of auto commands to set
        {
          -- events to trigger
          event = { "CursorHold", "CursorHoldI" },
          -- the rest of the autocmd options (:h nvim_create_autocmd)
          desc = "Document Highlighting",
          callback = function() vim.lsp.buf.document_highlight() end,
        },
        {
          event = { "CursorMoved", "CursorMovedI", "BufLeave" },
          desc = "Document Highlighting Clear",
          callback = function() vim.lsp.buf.clear_references() end,
        },
      },
    },
    -- mappings to be set up on attaching of a language server
    n = {

      ["gd"] = false,
      ["gD"] = false,

      -- lsp overrides
      ["<leader>ld"] = {
        function() vim.lsp.buf.definition() end,
        desc = "Show Definition",
        noremap = true,
        silent = true,
      },
      ["<leader>lD"] = {
        function() vim.lsp.buf.declaration() end,
        desc = "Show Declaration",
        noremap = true,
        silent = true,
      },
      ["<leader>lv"] = {
        function()
          vim.cmd "rightbelow vsplit"
          vim.lsp.buf.definition()
        end,
        desc = "Show Definition in Split",
        noremap = true,
        silent = true,
      },
      ["<leader>lV"] = {
        function()
          vim.cmd "rightbelow vsplit"
          vim.lsp.buf.declaration()
        end,
        desc = "Show Declaration in split",
        noremap = true,
        silent = true,
      },
      -- ["<leader>le"] = { function() vim.diagnostic.open_float() end, desc="Hover Diagnostics", noremap=true, silent=true },
      ["<leader>lE"] = {
        function() require("telescope.builtin").diagnostics() end,
        desc = "Search Diagnostics",
        noremap = true,
        silent = true,
      },

      -- lsp saga stuff
      ["<leader>lF"] = { "<cmd>Lspsaga finder<cr>", desc = "Lsp Finder", silent = true, noremap = true },
      ["<leader>lk"] = { "<cmd>Lspsaga hover_doc<cr>", desc = "Hover Commands", silent = true, noremap = true },
      ["<leader>la"] = { "<cmd>Lspsaga code_action<cr>", desc = "Lsp Code Action", silent = true, noremap = true },
      ["<leader>lr"] = { "<cmd>Lspsaga rename<cr>", desc = "Lsp Rename", silent = true, noremap = true },
      ["<leader>le"] = {
        "<cmd>Lspsaga show_line_diagnostics<cr>",
        desc = "Line Diagnostics",
        silent = true,
        noremap = true,
      },
      ["<leader>lc"] = {
        "<cmd>Lspsaga show_cursor_diagnostics<cr>",
        desc = "Cursor Diagnostics",
        silent = true,
        noremap = true,
      },
      ["<leader>ln"] = {
        "<cmd>Lspsaga diagnostic_jump_next<cr>",
        desc = "Next Diagnostic",
        silent = true,
        noremap = true,
      },
      ["<leader>lN"] = {
        "<cmd>Lspsaga diagnostic_jump_prev<cr>",
        desc = "Previous Diagnostic",
        silent = true,
        noremap = true,
      },
      ["<leader>lp"] = { "<cmd>Lspsaga peek_definition<cr>", desc = "Peak Definition", silent = true, noremap = true },
      ["<leader>lt"] = {
        "<cmd>Lspsaga peek_type_definition<cr>",
        desc = "Peak Type Definition",
        silent = true,
        noremap = true,
      },

      ["<leader>xr"] = { "<cmd>Trouble lsp_references<cr>", desc = "Quick Fix", silent = true, noremap = true },
      ["<leader>xw"] = {
        "<cmd>Trouble workspace_diagnostics<cr>",
        desc = "Workspace Diagnostics",
        silent = true,
        noremap = true,
      },
      ["<leader>xd"] = {
        "<cmd>Trouble document_diagnostics<cr>",
        desc = "Document Diagnostics",
        silent = true,
        noremap = true,
      },
    },
    -- A custom `on_attach` function to be run after the default `on_attach` function
    -- takes two parameters `client` and `bufnr`  (`:h lspconfig-setup`)
    on_attach = function(client, bufnr)
      -- this would disable semanticTokensProvider for all clients
      -- client.server_capabilities.semanticTokensProvider = nil
    end,
  },
}
