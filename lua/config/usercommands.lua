-- resize splits with Ctrl-arrow, or jump to next/previous word if only one split
vim.api.nvim_create_user_command('QuickResize', function(opts) 
        local is_single_split = #vim.api.nvim_tabpage_list_wins(0) == 1
        local char = opts.args
        if is_single_split then
            if char == "h" then vim.api.nvim_command("normal! b")
            elseif char == "l" then vim.api.nvim_command("normal! w")
            end
        else 
            if char == "h" then vim.cmd(":vertical resize +10<CR>")
            elseif char == "j" then vim.cmd(":resize -1<CR>")
            elseif char == "k" then vim.cmd(":resize +1<CR>")
            elseif char == "l" then vim.cmd(":vertical resize -10<CR>")
            end
        end
    end
, { nargs = 1 })

