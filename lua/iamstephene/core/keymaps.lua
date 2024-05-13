vim.g.mapleader = " "

local km = vim.keymap

km.set("n", "<leader>q", vim.cmd.Ex, { desc = "Exit vim" })

km.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected line down" })
km.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected line up" })

km.set("n", "<C-d>", "<C-d>zz", { desc = "Half page down and center buffer" })
km.set("n", "<C-u>", "<C-u>zz", { desc = "Half page up and center buffer" })
km.set("n", "n", "nzzzv", { desc = "Next occurrence and center buffer" })
km.set("n", "N", "Nzzzv", { desc = "Previous occurrence and center buffer" })

-- greatest remap ever
km.set("x", "<leader>p", [["_dP]], { desc = "Past without copying" })

-- next greatest remap ever : asbjornHaland
km.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Exit vim" })
km.set("n", "<leader>Y", [["+Y]], { desc = "Exit vim" })

km.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete without copying" })

-- This is going to get me cancelled
km.set("i", "jk", "<Esc>", { desc = "Exit vim" })

km.set("n", "Q", "<nop>", { desc = "Exit vim" })

km.set("n", "<C-k>", "<cmd>cnext<CR>zz")
km.set("n", "<C-j>", "<cmd>cprev<CR>zz")
km.set("n", "<leader>k", "<cmd>lnext<CR>zz")
km.set("n", "<leader>j", "<cmd>lprev<CR>zz")

km.set(
  "n",
  "<leader>rs",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "Replace word under cursor" }
)

-- increment/decrement numbers
km.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
km.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
km.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
km.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
km.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
km.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

km.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
km.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
km.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
km.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
km.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

km.set("n", "<leader>bn", "<C-6>", { desc = "Alternate to previous buffer" })
