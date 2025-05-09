vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dP")

-- save in insert mode
vim.keymap.set("i", "<C-s>", "<CMD>:w<CR><esc>")
vim.keymap.set("n", "<C-s>", "<CMD>:w<CR><esc>")


-- better indent
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")


vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('my.lsp', {}),

    callback = function(args)
        local opts = { buffer = args.buf }
        local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
        
        if client:supports_method("textDocument/completion") then
            vim.lsp.completion.enable(true, client.id, args.buf, {autotrigger = true})
        end

        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)

        --vim.lsp.completion.enable(true, e.data.client_id, e.buf, {
        --  autotrigger = true,
        --    convert = function(item)
        --        return { abbr = item.label:gsub('%b()','') }
        --    end,
        --}
        --)
    end,
})
