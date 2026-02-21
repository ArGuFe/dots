return {
  "numToStr/FTerm.nvim",
  config = function()
    require("FTerm").setup({
      border = "single",
      dimensions = {
        height = 0.3,
        width = 1.0,
        x = 0,
        y = 1,
      },
    })
  end,
}
