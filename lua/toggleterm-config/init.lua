require("toggleterm").setup{
    open_mapping = [[<c-t>]],
    size = function(term)
        if term.direction == "horizontal" then
            return 15
        elseif term.direction == "vertical" then
            return vim.o.columns * 0.35
        end
    end,
    persist_size = false,
    direction = 'vertical',
    start_in_insert = true,
}
