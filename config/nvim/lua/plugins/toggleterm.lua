return {
    'akinsho/toggleterm.nvim',
    config = function()
        local Terminal = require('toggleterm.terminal').Terminal

        -- General function to run a file in a terminal
        _G.save_and_run = function(command)
            vim.cmd('w')
            local file = vim.fn.expand('%')
            local cmd = command .. ' ' .. file
            local term = Terminal:new({
                cmd = cmd,
                direction = 'float',
                close_on_exit = false, -- Keep terminal open after execution
                on_open = function(t)
                    vim.cmd("startinsert!") -- Start in insert mode
                    -- Set a keymap to close the terminal
                    vim.api.nvim_buf_set_keymap(t.bufnr, 't', '<leader>tc', '<C-c> \\| <cmd>close<CR>', {noremap = true, silent = true})
                end,
            })
            term:toggle()
        end

        -- Autocmd for Python files
        vim.api.nvim_create_autocmd('FileType', {
            pattern = 'python',
            callback = function()
                vim.api.nvim_set_keymap('n', '<leader>tt', '<cmd>lua save_and_run("python3")<CR>', { noremap = true, silent = true })
                vim.api.nvim_set_keymap('i', '<leader>tt', '<ESC><cmd>lua ("python3")<CR>', { noremap = true, silent = true })
            end
        })

        -- Autocmd for R files
        vim.api.nvim_create_autocmd('FileType', {
            pattern = 'r',
            callback = function()
                vim.api.nvim_set_keymap('n', '<leader>tt', '<cmd>lua save_and_run("r", "R")<CR>', { noremap = true, silent = true })
                vim.api.nvim_set_keymap('i', '<leader>tt', '<ESC><cmd>lua save_and_run("r", "R")<CR>', { noremap = true, silent = true })
            end
        })
    end
}

-- return {
--     'akinsho/toggleterm.nvim',
--     config = function()
--
--         local Terminal = require('toggleterm.terminal').Terminal
--
--         function _run_python_file()
--             local file = vim.fn.expand('%')
--             local cmd = 'python3 ' .. file
--             local pyterm = Terminal:new({
--                 cmd = cmd,
--                 direction = 'float',
--                 close_on_exit = false, -- Keep terminal open after execution
--                 on_open = function(term)
--                     vim.cmd("startinsert!") -- Start in insert mode
--                     -- Optional: Set a keymap to close the terminal
--                     vim.api.nvim_buf_set_keymap(term.bufnr, 't', '<leader>tc', '<C-c> \\| <cmd>close<CR>', {noremap = true, silent = true})
--                     --  <C-V> \\| <cmd>close<CR>'
--                 end,
--             })
--             pyterm:toggle()
--         end
--         
--         function _run_R_file()
--             local file = vim.fn.expand('%')
--             local cmd = 'R ' .. file
--             local pyterm = Terminal:new({
--                 cmd = cmd,
--                 direction = 'float',
--                 close_on_exit = false, -- Keep terminal open after execution
--                 on_open = function(term)
--                     vim.cmd("startinsert!") -- Start in insert mode
--                     -- Optional: Set a keymap to close the terminal
--                     vim.api.nvim_buf_set_keymap(term.bufnr, 't', '<leader>tc', '<C-c> \\| <cmd>close<CR>', {noremap = true, silent = true})
--                     --  <C-V> \\| <cmd>close<CR>'
--                 end,
--             })
--             pyterm:toggle()
--         end
--         
--         -- Python files
--         vim.api.nvim_create_autocmd('FileType', {
--             pattern = 'python',
--             callback = function()
--                 vim.api.nvim_set_keymap('n', '<leader>tt', ':w<CR>:FloatermNew --autoclose=0 python3 %<CR>', { noremap = true, silent = true })
--                 vim.api.nvim_set_keymap('i', '<leader>tt', '<ESC>:w<CR>:FloatermNew --autoclose=0 python3 %<CR>', { noremap = true, silent = true })
--             end
--         })
--         -- R files
--         vim.api.nvim_create_autocmd('FileType', {
--             pattern = 'r',
--             callback = function()
--                 vim.api.nvim_set_keymap('n', '<leader>tt', ':w<CR>:FloatermNew --autoclose=0 R %<CR>', { noremap = true, silent = true })
--                 vim.api.nvim_set_keymap('i', '<leader>tt', '<ESC>:w<CR>:FloatermNew --autoclose=0 R %<CR>', { noremap = true, silent = true })
--             end
--           })
--
--         vim.api.nvim_set_keymap('n', '<leader>tt', '<cmd>lua _run_python_file()<CR>', {noremap = true, silent = true})
--
--     end
-- }
