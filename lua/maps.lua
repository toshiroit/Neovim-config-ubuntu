local keymap = vim.keymap

-- Do not yank width x
keymap.set('n','x','"_x')
 
-- Increment/decrement
keymap.set('n','+','<C-a>')
keymap.set('n','-','<C-x>')

-- Delete a word backwards 
keymap.set('n','dw','vb"_d')

-- Select all ( Ctrl + a gg G)
keymap.set('n','<C-a>','gg<S-v>G')

-- New Tab 
keymap.set('n','te',':tabedit<Return>',{silent = true});
-- Split Window
keymap.set('n','ss',':split<Return><C-w>w',{silent = true})
keymap.set('n','sv',':vsplit<Return><C-w>w',{silent = true})
-- Movie Window k
keymap.set('n','<Space>','<C-w>w')
keymap.set('','s<ledft>','<C-w>h')
keymap.set('','s<up>','<C-w>k')
keymap.set('','s<down>','<C-w>j')
keymap.set('','s<right>','<C-w>l')
keymap.set('','sh','<C-w>h')
keymap.set('','sk','<C-w>k')
keymap.set('','sj','<C-w>j')
keymap.set('','sl','<C-w>l')
-- Resize window 
keymap.set('n','<C-w><left>','<C-w><')
keymap.set('n','<C-w><right>','<C-w>>')
keymap.set('n','<C-w><up>','<C-w>+')
keymap.set('n','<C-w><down>','<C-w>-')
