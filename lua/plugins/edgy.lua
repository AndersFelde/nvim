return {
  {"folke/edgy.nvim",

  opts = {
      animate= {
        enabled = false
      },
      keys = {
        ["<m-l>"] = function(win)
          win:resize("width", 2)
        end,
        -- decrease width
        ["<m-h>"] = function(win)
          win:resize("width", -2)
        end,
        -- increase height
        ["<m-k>"] = function(win)
          win:resize("height", 2)
        end,
        -- decrease height
        ["<m-j>"] = function(win)
          win:resize("height", -2)
        end,
      }

    }
  }
}
