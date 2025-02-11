local harpoon = require("harpoon")

harpoon:setup()

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

-- basic telescope configuration
-- local conf = require("telescope.config").values
-- local function toggle_telescope(harpoon_files)
    -- local file_paths = {}
    -- for _, item in ipairs(harpoon_files.items) do
        -- table.insert(file_paths, item.value)
    -- end
-- 
    -- require("telescope.pickers").new({}, {
        -- prompt_title = "Harpoon",
        -- finder = require("telescope.finders").new_table({
            -- results = file_paths,
        -- }),
        -- previewer = conf.file_previewer({}),
        -- sorter = conf.generic_sorter({}),
    -- }):find()
-- end


vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-j>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-k>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-l>", function() harpoon:list():select(4) end)

vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-S-L>", function() harpoon:list():next() end)

-- old commands
 -- vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
--
-- vim.keymap.set("n", "<leader>x", mark.)
-- vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
