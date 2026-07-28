local cmd = require("cal.mapping").cmd
local map = require("cal.mapping").map

map("t", "<ESC>", [[<C-\><C-N>]])
map("v", "<Enter>", '"+y')
map("n", "<M-u>", "zt")
map("n", "<M-w>", cmd("bd"))
map("n", "<M-n>", cmd("enew"))

-- pane navigation
map("n", "<M-h>", cmd("wincmd h"))
map("n", "<M-j>", cmd("wincmd j"))
map("n", "<M-k>", cmd("wincmd k"))
map("n", "<M-l>", cmd("wincmd l"))

-- bufs + tabs navigation
map("n", "<M-I>", cmd("tabprevious"))
map("n", "<M-O>", cmd("tabnext"))
map("n", "<M-i>", cmd("bprevious"))
map("n", "<M-o>", cmd("bnext"))
-- bufs + tabs navigation
map("n", "<M-H>", cmd("tabprevious"))
map("n", "<M-J>", cmd("bnext"))
map("n", "<M-K>", cmd("bprevious"))
map("n", "<M-L>", cmd("tabnext"))
-- END bufs + tabs navigation

map("n", "<Tab>i", cmd("tabprevious"))
map("n", "<Tab>o", cmd("tabnext"))
map("n", "<Tab>n", cmd("tab split"))
map("n", "<Tab>q", cmd("tabclose"))

map("n", "_", [[<C-x>]])
map("n", "+", [[<C-a>]])
map("inv", "<C-a>", [[<Esc>ggVG]])

map("inv", "<M-/>", [[gcc]], { remap = true })
