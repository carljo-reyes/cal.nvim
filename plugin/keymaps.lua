local cmd = require("cal.mapping").cmd
local map = require("cal.mapping").map

map("t", "<ESC>", [[<C-\><C-N>]])
map("n", "<M-i>", cmd("bprevious"))
map("n", "<M-o>", cmd("bnext"))
map("v", "<Enter>", '"+y')

map("n", "<Tab>i", cmd("tabprevious"))
map("n", "<Tab>o", cmd("tabnext"))
map("n", "<Tab>n", cmd("tab split"))
map("n", "<Tab>q", cmd("tabclose"))

map("n", "_", [[<C-x>]])
map("n", "+", [[<C-a>]])
map("inv", "<C-a>", [[<Esc>ggVG]])

map("inv", "<M-/>", [[gcc]], { remap = true })
