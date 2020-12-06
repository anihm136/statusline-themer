local function getSlColorsForColorscheme(colorscheme)
    return require("slthemer.themes." .. colorscheme)
end

function getSlColors()
    local colorscheme = vim.api.nvim_exec("colorscheme", true)
    local ok, slcolors = pcall(getSlColorsForColorscheme, colorscheme)
    if ok then
        return slcolors
    end

    return {
        Normal = "#000000",
        Insert = "#000000",
        Visual = "#000000",
        Replace = "#000000",
        Cmdline = "#000000",
        StatusText = "#000000",
        Background = "#2f2f2f",
        Git = "#000000",
        Filestats = "#000000"
    }
end

return {getSlColors = getSlColors}
