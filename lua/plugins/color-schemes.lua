return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme "catppuccin-mocha"
    end
  },{
    "nyoom-engineering/oxocarbon.nvim",
    name = "oxocarbon",
  },{
    "projekt0n/github-nvim-theme",
    name = "github-theme",
  },{
    "EdenEast/nightfox.nvim",
    name = "nightfox-theme",
  },
}
