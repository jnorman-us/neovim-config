local function centered_window(width, height)
    local ew = vim.o.columns
    local eh = vim.o.lines
    local col = (ew-width)/2
    local row = (eh-height)/2 - 1
    return {
        row = row, 
        col=col,
        relative = 'editor',
        border = 'rounded',
        width = width,
        height = height,
    }
end

require('nvim-tree').setup{
    view = {
        width = 30,
    },
}
