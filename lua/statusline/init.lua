local cmd = vim.cmd
local fn = vim.fn
local gl = require("galaxyline")
local gls = gl.section
-- gl.short_line_list = {"nerdtree", "packager", "Floaterm", "lazygit", 'fugitive', 'plug', 'term', 'startify', 'vista', 'dbui'}


-- colors:
--   primary:
--     background: '#0E1014'
--     foreground: '#d5ddd7'
--   cursor:
--     text:       '#0E1014'
--     cursor:     '#d5ddd7'
--   normal:
--     black:      '#252525'
--     red:        '#ae8687'
--     green:      '#98A699'
--     yellow:     '#dfae86'
--     blue:       '#6E8888'
--     magenta:    '#af5e5e'
--     cyan:       '#afd7d7'
--     white:      '#d5ddd7'
--   bright:
--     black:      '#252525'
--     red:        '#ae8687'
--     green:      '#80A980'
--     yellow:     '#dfae86'
--     blue:       '#afd7d7'
--     magenta:    '#af5e5e'
--     cyan:       '#dfdfde'
--     white:      '#d5ddd7'

local colors = {
  bg = "d5ddd7",
  fg = "#d5ddd7",
  lbg = "#6E8888",
  line_bg = "#252525", -- lbg = "NONE", --shows active window
  -- line_bg = "#6E8888", -- lbg = "NONE", --shows active window
  magenta = "#af5e5e",
  fg_green = "#527c77",
  blue = "#4B5056",
  red= "#af5e5e",
  yellow = "#EBCB8B",
  cyan= "#919652",
  orange= "#E2995C",
  darkblue= "#66899D",
  purple= "#b88",
  green= "#527C77",
  gray= "#606360",
  black="#252525"
}


local function lsp_status(status)
    shorter_stat = ''
    for match in string.gmatch(status, "[^%s]+")  do
        err_warn = string.find(match, "^[WE]%d+", 0)
        if not err_warn then
            shorter_stat = shorter_stat .. ' ' .. match
        end
    end
    return shorter_stat
end

local function trailing_whitespace()
    local trail = vim.fn.search("\\s$", "nw")
    if trail ~= 0 then
        return ' '
    else
        return nil
    end
end

-- insert_left insert item at the left panel
local function insert_left(element)
  table.insert(gls.left, element)
end

local function insert_blank_line_at_left()
insert_left {
  Space = {
    provider = function () return '    ' end,
    highlight = {colors.bg,colors.bg}
  }
}
end


-- insert_right insert given item into galaxyline.right
local function insert_right(element)
  table.insert(gls.right, element)
end

-- insert_blank_line_at_left insert blank line with
-- bg color.
local function insert_blank_line_at_right()
insert_right {
  Space = {
    provider = function () return '    ' end,
    highlight = {colors.line_bg,colors.bg}
  }
}
end


local checkwidth = function()
  local squeeze_width = fn.winwidth(0) / 2
  if squeeze_width > 40 then
    return true
  end
  return false
end

TrailingWhiteSpace = trailing_whitespace

local buffer_not_empty = function()
  if fn.empty(fn.expand("%:t")) ~= 1 then
    return true
  end
  return false
end

-----------------------------------------------------
----------------- start insert ----------------------
-----------------------------------------------------

insert_blank_line_at_left()

--[[ insert_left {
  Start = {
    provider = function() return '' end,
    highlight = {colors.line_bg}
  }
} ]]

insert_left {
  ViMode = {
    provider = function()
      -- auto change color according the vim mode
      local mode_color = {
        n = colors.fg,
        i = colors.green,
        v = colors.blue,
        [""] = colors.lbg,
        V = colors.blue,
        c = colors.red,
        no = colors.red,
        s = colors.orange,
        S = colors.orange,
        [""] = colors.orange,
        ic = colors.yellow,
        R = colors.purple,
        Rv = colors.purple,
        cv = colors.red,
        ce = colors.red,
        r = colors.cyan,
        rm = colors.cyan,
        ["r?"] = colors.cyan,
        ["!"] = colors.red,
        t = colors.red
      }
      cmd("hi GalaxyViMode guifg=" .. mode_color[fn.mode()])
      return "    "
    end,
    highlight = {colors.fg, colors.bg, }
  }
}

insert_left {
  FileIcon = {
    provider = "FileIcon",
    condition = buffer_not_empty,
    highlight = {require("galaxyline.provider_fileinfo").get_file_icon_color, colors.bg, "bold"}
  }
}

insert_left{
  FileName = {
    -- provider = "FileName",
    provider = function()
      return fn.expand("%:f")
    end,
    condition = buffer_not_empty,
    separator = "  ",
    separator_highlight = {colors.red, colors.bg},
    highlight = {colors.lbg, colors.bg, "bold"}
  }
}

insert_left {
  GitIcon = {
    provider = function()
      return "  "
      -- return "  "
    end,
    condition = require("galaxyline.provider_vcs").check_git_workspace,
    highlight = {colors.lbg, colors.bg}
  }
}


insert_left {
  GitBranch = {
    provider = "GitBranch",
    separator = "",
    condition = require("galaxyline.provider_vcs").check_git_workspace,
    separator_highlight = {colors.purple, colors.bg},
    highlight = {colors.fg, colors.bg}
  }
}

insert_blank_line_at_left()
insert_blank_line_at_left()

-- insert_left {
--   Separa = {
--     provider = function() return '  ' end,
--     highlight = {colors.line_bg, },
--   }
-- }

----------------- RIGHT ----------------------

-- insert_right{
--   Start = {
--     provider = function() return '  ' end,
--     highlight = {colors.line_bg, }
--   }
-- }


insert_right {
  DiffAdd = {
    provider = "DiffAdd",
    condition = checkwidth,
    icon = "   ",
    highlight = {colors.fg, colors.bg}
  }
}

insert_right {
  DiffModified = {
    provider = "DiffModified",
    condition = checkwidth,
    icon = " ",
    highlight = {colors.lbg, colors.bg}
  }
}

insert_right {
  DiffRemove = {
    provider = "DiffRemove",
    condition = checkwidth,
    icon = " ",
    highlight = {colors.red, colors.bg}
  }
}


-- insert_right {
--   DiagnosticError = {
--     provider = "DiagnosticError",
--     icon = " ",
--     highlight = {colors.red, colors.line_bg},
--   }
-- }

-- insert_right {
--   DiagnosticWarn = {
--     provider = "DiagnosticWarn",
--     icon = " ",
--     highlight = {colors.yellow, colors.line_bg},
--   }
-- }

-- insert_right {
--   DiagnosticInfo = {
--     provider = "DiagnosticInfo",
--     icon = "  ",
--     highlight = {colors.yellow, colors.line_bg},
--   }
-- }

-- insert_right {
--   DiagnosticHint = {
--     provider = "DiagnosticHint",
--     icon = "  ",
--     highlight = {colors.white, colors.line_bg},
--   }
-- }


--[[ insert_right{
  Separa = {
    provider = function() return '' end,
    highlight = {colors.line_bg, },
  }
} ]]

insert_blank_line_at_right()

-- gls.short_line_left[2] = {
--   SFileName = {
--     provider = function()
--       local fileinfo = require("galaxyline.provider_fileinfo")
--       local fname = fileinfo.get_current_file_name()
--       for _, v in ipairs(gl.short_line_list) do
--         if v == vim.bo.filetype then
--           return " "
--         end
--       end
--       return fname
--     end,
--     condition = buffer_not_empty,
--     highlight = {colors.fg, colors.lbg, "bold"}
--   }
-- }

-- gls.short_line_right[1] = {
--   BufferIcon = {
--     provider = "BufferIcon",
--     highlight = {colors.fg, colors.lbg, "bold"}
--   }
-- }

