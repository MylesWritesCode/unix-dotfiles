-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = true
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/myles/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/myles/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/myles/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/myles/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/myles/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["DAPInstall.nvim"] = {
    load_after = {
      ["nvim-dap"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/myles/.local/share/nvim/site/pack/packer/opt/DAPInstall.nvim"
  },
  LuaSnip = {
    config = { "\27LJ\2\2M\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14lazy_load luasnip.loaders.from_vscode\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/myles/.local/share/nvim/site/pack/packer/opt/LuaSnip"
  },
  aniseed = {
    loaded = true,
    path = "/home/myles/.local/share/nvim/site/pack/packer/start/aniseed"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\2/\0\1\4\0\4\0\0056\1\0\0009\1\1\1'\2\2\0009\3\3\0D\1\3\0\aid\a%s\vformat\vstringÉ\1\0\4\14\0\a\0\21'\4\0\0006\5\1\0\18\6\2\0B\5\2\4H\b\rÄ\a\b\2\0X\n\2Ä'\n\3\0X\v\5Ä\a\b\4\0X\n\2Ä'\n\5\0X\v\1Ä'\n\6\0\18\v\4\0\18\f\t\0\18\r\n\0&\4\r\vF\b\3\3R\bÒL\4\2\0\n Ô†µ \n ÔÅ± \fwarning\n ÔÅó \nerror\npairs\6 E\0\1\2\0\4\0\t6\1\0\0009\1\1\0018\1\0\0019\1\2\1\6\1\3\0X\1\2Ä+\1\2\0L\1\2\0K\0\1\0\14dashboard\rfiletype\abo\bvimù\3\0\0\b\0\17\1>4\0\0\0006\1\0\0009\1\1\0019\1\2\0019\1\3\1)\2\0\0'\3\4\0B\1\3\0026\2\0\0009\2\1\0029\2\2\0029\2\3\2)\3\0\0'\4\5\0B\2\3\0026\3\0\0009\3\1\0039\3\2\0039\3\3\3)\4\0\0'\5\6\0B\3\3\0026\4\0\0009\4\1\0049\4\2\0049\4\3\4)\5\0\0'\6\a\0B\4\3\2\b\1\0\0X\5\6Ä5\5\t\0'\6\b\0\18\a\1\0&\6\a\6=\6\n\5>\5\1\0\b\2\0\0X\5\6Ä5\5\f\0'\6\v\0\18\a\2\0&\6\a\6=\6\n\5>\5\2\0\b\4\0\0X\5\6Ä5\5\14\0'\6\r\0\18\a\4\0&\6\a\6=\6\n\5>\5\3\0\b\3\0\0X\5\6Ä5\5\16\0'\6\15\0\18\a\3\0&\6\a\6=\6\n\5>\5\4\0L\0\2\0\1\0\1\nguifg\f#51afef\n Ô†µ \1\0\1\nguifg\f#98be65\n ÔÅô \1\0\1\nguifg\f#ECBE7B\n ÔÅ± \ttext\1\0\1\nguifg\f#ff6c6b\n ÔÅó \tHint\16Information\fWarning\nError\14get_count\15diagnostic\blsp\bvim\0ƒ\6\1\0\5\0\21\0\0296\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\19\0005\2\4\0003\3\3\0=\3\5\0023\3\6\0=\3\a\0023\3\b\0=\3\t\0024\3\5\0005\4\n\0>\4\1\0035\4\v\0>\4\2\0035\4\f\0>\4\3\0035\4\r\0>\4\4\3=\3\14\0025\3\16\0003\4\15\0=\4\17\3=\3\18\2=\2\20\1B\0\2\1K\0\1\0\foptions\1\0\0\17custom_areas\nright\1\0\0\0\foffsets\1\0\3\ttext\20Plugins manager\15text_align\vcenter\rfiletype\vpacker\1\0\3\ttext\fSymbols\15text_align\vcenter\rfiletype\fOutline\1\0\3\ttext\fMinimap\15text_align\vcenter\rfiletype\fminimap\1\0\3\ttext\18File Explorer\15text_align\vcenter\rfiletype\rNvimTree\18custom_filter\0\26diagnostics_indicator\0\fnumbers\1\0\19\rtab_size\3\25\22left_trunc_marker\bÔÇ®\fsort_by\14directory\25enforce_regular_tabs\2\16diagnostics\rnvim_lsp\28show_buffer_close_icons\2\20separator_style\nthick\24show_tab_indicators\2\22buffer_close_icon\bÔôï\20max_name_length\3\20\15close_icon\bÔÄç\22show_buffer_icons\2\24persist_buffer_sort\2\23right_trunc_marker\bÔÇ©\22max_prefix_length\3\15\27always_show_bufferline\1\20show_close_icon\1\19indicator_icon\b‚ñé\18modified_icon\b‚óè\0\nsetup\15bufferline\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/myles/.local/share/nvim/site/pack/packer/opt/bufferline.nvim"
  },
  ["cmd-parser.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/myles/.local/share/nvim/site/pack/packer/opt/cmd-parser.nvim"
  },
  ["dashboard-nvim"] = {
    config = { "\27LJ\2\2≥\26\0\0\t\0;\0Ç\0016\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\0026\1\3\0009\1\4\0016\2\0\0'\3\6\0B\2\2\0029\2\a\2'\3\b\0&\2\3\2=\2\5\0016\1\3\0009\1\4\1'\2\n\0=\2\t\0016\1\3\0009\1\4\0015\2\15\0005\3\r\0005\4\f\0=\4\14\3=\3\16\0025\3\18\0005\4\17\0=\4\14\3=\3\19\0025\3\21\0005\4\20\0=\4\14\3=\3\22\0025\3\24\0005\4\23\0=\4\14\3=\3\25\0025\3\27\0005\4\26\0=\4\14\3=\3\28\0025\3\30\0005\4\29\0=\4\14\3=\3\31\0025\3!\0005\4 \0=\4\14\3=\3\4\2=\2\v\0016\1\3\0009\1\4\0014\2\3\0'\3#\0006\4\3\0009\4$\0049\4%\4'\5&\0006\6\3\0009\6$\0069\6'\0066\a\3\0009\a$\a9\a(\a6\b\3\0009\b\4\b9\b)\bB\a\2\0A\6\0\0A\4\1\2'\5*\0&\3\5\3>\3\1\2=\2\"\0019\1+\0009\1,\1\14\0\1\0X\1\4Ä6\1\3\0009\1\4\1)\2\1\0=\2-\0016\1\3\0009\1\4\0016\2\3\0009\2/\0029\3+\0009\3.\3B\2\2\2\15\0\2\0X\3\3Ä5\0020\0\14\0\2\0X\3\2Ä9\2+\0009\2.\2=\2.\0016\1\3\0009\0011\1'\0022\0009\3+\0009\0033\0039\0034\3&\2\3\2B\1\2\0016\1\3\0009\0011\1'\0025\0009\3+\0009\0033\0039\0036\3&\2\3\2B\1\2\0016\1\3\0009\0011\1'\0027\0009\3+\0009\0033\0039\0038\3&\2\3\2B\1\2\0016\1\3\0009\0011\1'\0029\0009\3+\0009\0033\0039\3:\3&\2\3\2B\1\2\1K\0\1\0\17footer_color!hi! dashboardFooter   guifg=\19shortcut_color!hi! dashboardShortcut guifg=\17center_color!hi! dashboardCenter   guifg=\17header_color\28dashboard_custom_colors!hi! dashboardHeader   guifg=\bcmd\1\22\0\0S                                                                              S=================     ===============     ===============   ========  ========S\\\\ . . . . . . .\\\\   //. . . . . . .\\\\   //. . . . . . .\\\\  \\\\. . .\\\\// . . //S||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\\/ . . .||S|| . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||S||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||S|| . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\\ . . . . ||S||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\\_ . .|. .||S|| . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\\ `-_/| . ||S||_-' ||  .|/    || ||    \\|.  || `-_|| ||_-' ||  .|/    || ||   | \\  / |-_.||S||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \\  / |  `||S||    `'         || ||         `'    || ||    `'         || ||   | \\  / |   ||S||            .===' `===.         .==='.`===.         .===' /==. |  \\/  |   ||S||         .=='   \\_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \\/  |   ||S||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \\/  |   ||S||   .=='    _-'          `-__\\._-'         `-_./__-'         `' |. /|  |   ||S||.=='    _-'                                                     `' |  /==.||S=='    _-'                        N E O V I M                         \\/   `==S\\   _-'                                                                `-_   /T `''                                                                      ``'  T                                                                               \16tbl_isempty\28dashboard_custom_header!dashboard_disable_statusline\23dashboard_statline\tdoom\14 seconds.\15start_time\freltime\17reltimefloat\t%.3f\vprintf\afn\25Doom Nvim loaded in \28dashboard_custom_footer\1\0\1\fcommand\16h doom_nvim\1\2\0\0000ÔÄ≠  Open Documentation             SPC d d\6f\1\0\1\fcommand5lua require(\"doom.core.functions\").edit_config()\1\2\0\0000Ôë¢  Open Private Configuration     SPC d c\6e\1\0\1\fcommand\24Telescope live_grep\1\2\0\0000ÔáÇ  Find Word                      SPC s g\6d\1\0\1\fcommand\25Telescope find_files\1\2\0\0000Ôú°  Find File                      SPC f f\6c\1\0\1\fcommand\20Telescope marks\1\2\0\0000ÔÄÆ  Jump to Bookmark               SPC s m\6b\1\0\1\fcommand\23Telescope oldfiles\1\2\0\0000ÔÖú  Recently Opened Files          SPC f r\6a\1\0\0\16description\1\0\1\fcommand5lua require('persistence').load({ last = true })\1\2\0\0000ÔÄû  Load Last Session              SPC s r\29dashboard_custom_section\14telescope dashboard_default_executive\14/sessions\14doom_root\21doom.core.system dashboard_session_directory\6g\bvim\16load_config\21doom.core.config\frequire\0" },
    loaded = true,
    path = "/home/myles/.local/share/nvim/site/pack/packer/start/dashboard-nvim"
  },
  ["format.nvim"] = {
    config = { "\27LJ\2\2N\0\1\4\1\1\0\4-\1\0\0'\2\0\0\18\3\0\0D\1\3\0\0¿9stylua --config-path ~/.config/stylua/stylua.toml %sN\0\1\4\1\1\0\4-\1\0\0'\2\0\0\18\3\0\0D\1\3\0\0¿9stylua --config-path ~/.config/stylua/stylua.toml %s$\0\1\4\1\1\0\4-\1\0\0'\2\0\0\18\3\0\0D\1\3\0\0¿\15yapf -i %s¢\t\1\0\a\0005\0n6\0\0\0009\0\1\0006\1\2\0'\2\1\0B\1\2\0029\1\3\0015\2\a\0004\3\3\0005\4\5\0005\5\4\0=\5\6\4>\4\1\3=\3\b\0024\3\3\0005\4\n\0004\5\3\0003\6\t\0>\6\1\5=\5\6\4>\4\1\3=\3\v\0024\3\3\0005\4\r\0005\5\f\0=\5\6\4>\4\1\3=\3\14\0024\3\3\0005\4\16\0004\5\3\0003\6\15\0>\6\1\5=\5\6\4>\4\1\3=\3\17\0024\3\3\0005\4\19\0004\5\3\0003\6\18\0>\6\1\5=\5\6\4>\4\1\3=\3\20\0024\3\3\0005\4\22\0005\5\21\0=\5\6\4>\4\1\3=\3\23\0024\3\3\0005\4\25\0005\5\24\0=\5\6\4>\4\1\3=\3\26\0024\3\3\0005\4\28\0005\5\27\0=\5\6\4>\4\1\3=\3\29\0024\3\3\0005\4\31\0005\5\30\0=\5\6\4>\4\1\3=\3 \0024\3\3\0005\4\"\0005\5!\0=\5\6\4>\4\1\0035\4$\0005\5#\0=\5\6\4>\4\2\3=\3%\0024\3\3\0005\4'\0005\5&\0=\5\6\4>\4\1\3=\3(\0024\3\3\0005\4*\0005\5)\0=\5\6\4>\4\1\3=\3+\0024\3\3\0005\4-\0005\5,\0=\5\6\4>\4\1\3=\3.\0024\3\3\0005\0040\0005\5/\0=\5\6\4>\4\1\3=\0031\0024\3\3\0005\0043\0005\0052\0=\5\6\4>\4\1\3=\0034\2B\1\2\0012\0\0ÄK\0\1\0\tyaml\1\0\0\1\2\0\0\30prettier -w --parser yaml\ttoml\1\0\0\1\2\0\0\30prettier -w --parser toml\tjson\1\0\0\1\2\0\0\30prettier -w --parser json\tscss\1\0\0\1\2\0\0\30prettier -w --parser scss\bcss\1\0\0\1\2\0\0\29prettier -w --parser css\rmarkdown\1\0\3\16end_pattern\n^```$\vtarget\fcurrent\18start_pattern\16^```python$\1\2\0\0\fyapf -i\1\0\0\1\2\0\0\"prettier -w --parser markdown\thtml\1\0\0\1\2\0\0\30prettier -w --parser html\15typescript\1\0\0\1\2\0\0$prettier -w --parser typescript\15javascript\1\0\0\1\3\0\0\16prettier -w%./node_modules/.bin/eslint --fix\ago\1\0\1\21tempfile_postfix\t.tmp\1\3\0\0\rgofmt -w\17goimports -w\vpython\1\0\0\0\blua\1\0\0\0\fvimwiki\1\0\2\16end_pattern\n^}}}$\18start_pattern\20^{{{javascript$\1\2\0\0\31prettier -w --parser babel\bvim\1\0\2\16end_pattern\n^EOF$\18start_pattern\17^lua << EOF$\0\6*\1\0\0\bcmd\1\0\0\1\2\0\0\24sed -i 's/[ \t]*$//'\nsetup\frequire\vformat\vstring\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/myles/.local/share/nvim/site/pack/packer/opt/format.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/myles/.local/share/nvim/site/pack/packer/start/friendly-snippets"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LJ\2\2G\0\0\2\1\2\0\b-\0\0\0009\0\0\0B\0\1\2\a\0\1\0X\1\2Ä+\1\2\0L\1\2\0K\0\1\0\6¿\14DASHBOARD\24get_buffer_filetypeG\0\0\2\1\2\0\b-\0\0\0009\0\0\0B\0\1\2\6\0\1\0X\1\2Ä+\1\2\0L\1\2\0K\0\1\0\6¿\14DASHBOARD\24get_buffer_filetype\20\0\0\1\0\1\0\2'\0\0\0L\0\2\0\t‚ñä Á\4\0\0\4\1#\0r5\0\1\0-\1\0\0'\2\0\0B\1\2\2B\1\1\2=\1\2\0-\1\0\0'\2\3\0B\1\2\2B\1\1\2=\1\4\0-\1\0\0'\2\5\0B\1\2\2B\1\1\2=\1\6\0-\1\0\0'\2\5\0B\1\2\2B\1\1\2=\1\a\0-\1\0\0'\2\5\0B\1\2\2B\1\1\2=\1\b\0-\1\0\0'\2\t\0B\1\2\2B\1\1\2=\1\n\0-\1\0\0'\2\0\0B\1\2\2B\1\1\2=\1\v\0-\1\0\0'\2\f\0B\1\2\2B\1\1\2=\1\r\0-\1\0\0'\2\f\0B\1\2\2B\1\1\2=\1\14\0-\1\0\0'\2\f\0B\1\2\2B\1\1\2=\1\15\0-\1\0\0'\2\16\0B\1\2\2B\1\1\2=\1\17\0-\1\0\0'\2\t\0B\1\2\2B\1\1\2=\1\18\0-\1\0\0'\2\t\0B\1\2\2B\1\1\2=\1\19\0-\1\0\0'\2\0\0B\1\2\2B\1\1\2=\1\20\0-\1\0\0'\2\0\0B\1\2\2B\1\1\2=\1\21\0-\1\0\0'\2\22\0B\1\2\2B\1\1\2=\1\23\0-\1\0\0'\2\22\0B\1\2\2B\1\1\2=\1\24\0-\1\0\0'\2\22\0B\1\2\2B\1\1\2=\1\25\0-\1\0\0'\2\0\0B\1\2\2B\1\1\2=\1\26\0-\1\0\0'\2\0\0B\1\2\2B\1\1\2=\1\27\0006\1\28\0009\1\29\0019\1\30\1'\2\31\0006\3\28\0009\3 \0039\3!\3B\3\1\0028\3\3\0&\2\3\2B\1\2\1'\1\"\0L\1\2\0\2¿\nÔåå  \tmode\afn\27hi GalaxyViMode guifg=\17nvim_command\bapi\bvim\6t\6!\ar?\arm\6r\tcyan\ace\acv\aRv\6R\aic\vyellow\6\19\6S\6s\vorange\ano\6c\fmagenta\6V\6\22\6v\tblue\6i\ngreen\6n\1\0\0\breds\0\0\6\0\b\0\0166\0\0\0009\0\1\0009\0\2\0'\1\3\0B\0\2\0026\1\0\0009\1\1\0019\1\4\1'\2\3\0B\1\2\0026\2\5\0009\2\6\2'\3\a\0\18\4\0\0\18\5\1\0D\2\4\0\16%3d : %2d  \vformat\vstring\bcol\6.\tline\afn\bvim“\1\0\0\5\1\v\0\31-\0\0\0009\0\0\0B\0\1\2\6\0\1\0X\0\rÄ'\0\2\0-\1\0\0009\1\0\1B\1\1\2\18\2\1\0009\1\3\1'\3\4\0006\4\5\0009\4\6\4B\1\4\2&\0\1\0L\0\2\0X\0\fÄ'\0\a\0006\1\b\0009\1\t\0019\1\n\1\18\2\1\0009\1\3\1'\3\4\0006\4\5\0009\4\6\4B\1\4\2&\0\1\0L\0\2\0K\0\1\0\5¿\rfiletype\abo\bvim\tÔêç \nupper\vstring\b^%l\tgsub\tÓòÅ \18No Active Lsp\19get_lsp_clientJ\0\0\2\1\2\0\n5\0\0\0-\1\0\0009\1\1\0018\1\1\0\15\0\1\0X\2\2Ä+\1\1\0L\1\2\0+\1\2\0L\1\2\0\3¿\rfiletype\1\0\2\5\2\14dashboard\2\21\0\0\1\0\1\0\2'\0\0\0L\0\2\0\n Ôû° \19\0\0\1\0\1\0\2'\0\0\0L\0\2\0\b   7\0\0\3\1\3\0\6'\0\0\0-\1\0\0009\1\1\1'\2\2\0&\0\2\0L\0\2\0\0¿\6 \17doom_version\vDOOM v\20\0\0\1\0\1\0\2'\0\0\0L\0\2\0\t ‚ñä\20\0\0\1\0\1\0\2'\0\0\0L\0\2\0\t‚ñä \20\0\0\1\0\1\0\2'\0\0\0L\0\2\0\t ‚ñäÙ\29\1\0\17\0Ü\1\1≈\0046\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0029\1\3\1B\1\1\0026\2\0\0'\3\4\0B\2\2\0029\2\5\0026\3\6\0009\3\a\0036\4\0\0'\5\b\0B\4\2\0026\5\0\0'\6\t\0B\5\2\0026\6\0\0'\a\n\0B\6\2\0026\a\0\0'\b\v\0B\a\2\0029\b\f\0045\t\14\0=\t\r\0043\t\15\0003\n\16\0009\v\17\b5\f\24\0005\r\19\0003\14\18\0=\14\20\r4\14\3\0\18\15\2\0'\16\21\0B\15\2\2>\15\1\14\18\15\2\0'\16\22\0B\15\2\0?\15\0\0=\14\23\r=\r\25\f>\f\1\v9\v\17\b5\f\30\0005\r\27\0003\14\26\0=\14\20\r5\14\29\0\18\15\2\0'\16\28\0B\15\2\2>\15\1\14\18\15\2\0'\16\22\0B\15\2\2>\15\2\14=\14\23\r=\r\31\f>\f\2\v9\v\17\b5\f%\0005\r \0009\14!\a\15\0\14\0X\15\1Ä\18\14\n\0=\14\"\r4\14\3\0\18\15\2\0'\16#\0B\15\2\2>\15\1\14\18\15\2\0'\16\22\0B\15\2\0?\15\0\0=\14\23\r4\14\3\0\18\15\2\0'\16\22\0B\15\2\2>\15\1\14\18\15\2\0'\16\22\0B\15\2\0?\15\0\0=\14$\r=\r&\f>\f\3\v9\v\17\b5\f*\0005\r'\0009\14!\a\15\0\14\0X\15\1Ä\18\14\n\0=\14\"\r4\14\3\0006\15\0\0'\16(\0B\15\2\0029\15)\15>\15\1\14\18\15\2\0'\16\22\0B\15\2\0?\15\0\0=\14\23\r=\r+\f>\f\4\v9\v\17\b5\f.\0005\r,\0009\14!\a\15\0\14\0X\15\1Ä\18\14\n\0=\14\"\r5\14-\0\18\15\2\0'\16#\0B\15\2\2>\15\1\14\18\15\2\0'\16\22\0B\15\2\2>\15\2\14=\14\23\r4\14\3\0\18\15\2\0'\16\22\0B\15\2\2>\15\1\14\18\15\2\0'\16\22\0B\15\2\0?\15\0\0=\14$\r=\r/\f>\f\5\v9\v\17\b5\f3\0005\r1\0003\0140\0=\14\20\r=\n\"\r4\14\3\0\18\15\2\0'\0162\0B\15\2\2>\15\1\14\18\15\2\0'\16\22\0B\15\2\0?\15\0\0=\14\23\r=\r4\f>\f\6\v9\v\17\b5\f6\0005\r5\0=\n\"\r4\14\3\0\18\15\2\0'\0162\0B\15\2\2>\15\1\14\18\15\2\0'\16\22\0B\15\2\0?\15\0\0=\14\23\r4\14\3\0\18\15\2\0'\16\22\0B\15\2\2>\15\1\14\18\15\2\0'\16\22\0B\15\2\0?\15\0\0=\14$\r=\r7\f>\f\a\v9\v\17\b5\f=\0005\r8\0=\n\"\r9\0149\0019\14:\14'\15;\0&\14\15\14=\14<\r4\14\3\0\18\15\2\0'\16\28\0B\15\2\2>\15\1\14\18\15\2\0'\16\22\0B\15\2\0?\15\0\0=\14\23\r=\r>\f>\f\b\v9\v\17\b5\fB\0005\r?\0=\n\"\r9\0149\0019\14@\14'\15;\0&\14\15\14=\14<\r4\14\3\0\18\15\2\0'\16A\0B\15\2\2>\15\1\14\18\15\2\0'\16\22\0B\15\2\0?\15\0\0=\14\23\r=\rC\f>\f\t\v9\v\17\b5\fF\0005\rD\0=\n\"\r9\0149\0019\14E\14'\15;\0&\14\15\14=\14<\r4\14\3\0\18\15\2\0'\16\21\0B\15\2\2>\15\1\14\18\15\2\0'\16\22\0B\15\2\0?\15\0\0=\14\23\r=\rG\f>\f\n\v9\vH\b5\fK\0005\rI\0009\14J\a\15\0\14\0X\15\1Ä\18\14\n\0=\14\"\r4\14\3\0\18\15\2\0'\16#\0B\15\2\2>\15\1\14\18\15\2\0'\16\22\0B\15\2\0?\15\0\0=\14\23\r4\14\3\0\18\15\2\0'\16\22\0B\15\2\2>\15\1\14\18\15\2\0'\16\22\0B\15\2\0?\15\0\0=\14$\r=\rL\f>\f\1\v9\vH\b5\fN\0005\rM\0009\14J\a\15\0\14\0X\15\1Ä\18\14\n\0=\14\"\r4\14\3\0\18\15\2\0'\16#\0B\15\2\2>\15\1\14\18\15\2\0'\16\22\0B\15\2\0?\15\0\0=\14\23\r4\14\3\0\18\15\2\0'\16\22\0B\15\2\2>\15\1\14\18\15\2\0'\16\22\0B\15\2\0?\15\0\0=\14$\r=\rO\f>\f\2\v9\vH\b5\fS\0005\rQ\0003\14P\0=\14\20\r3\14R\0=\14\"\r4\14\3\0\18\15\2\0'\16\21\0B\15\2\2>\15\1\14\18\15\2\0'\16\22\0B\15\2\0?\15\0\0=\14\23\r4\14\3\0\18\15\2\0'\16\22\0B\15\2\2>\15\1\14\18\15\2\0'\16\22\0B\15\2\0?\15\0\0=\14$\r=\rT\f>\f\3\v9\vH\b5\fX\0005\rV\0003\14U\0=\14\20\r9\14W\a=\14\"\r4\14\3\0\18\15\2\0'\16\28\0B\15\2\2>\15\1\14\18\15\2\0'\16\22\0B\15\2\0?\15\0\0=\14\23\r4\14\3\0\18\15\2\0'\16\22\0B\15\2\2>\15\1\14\18\15\2\0'\16\22\0B\15\2\0?\15\0\0=\14$\r=\rY\f>\f\4\v9\vH\b5\f]\0005\rZ\0009\14W\a=\14\"\r5\14\\\0\18\15\2\0'\16[\0B\15\2\2>\15\1\14\18\15\2\0'\16\22\0B\15\2\2>\15\2\14=\14\23\r=\r^\f>\f\5\v9\vH\b5\fa\0005\r`\0003\14_\0=\14\20\r=\n\"\r4\14\3\0\18\15\2\0'\16\22\0B\15\2\2>\15\1\14\18\15\2\0'\16\22\0B\15\2\0?\15\0\0=\14\23\r=\rb\f>\f\6\v9\vH\b5\fd\0005\rc\0009\14J\a\15\0\14\0X\15\1Ä\18\14\n\0=\14\"\r4\14\3\0\18\15\2\0'\16[\0B\15\2\2>\15\1\14\18\15\2\0'\16\22\0B\15\2\0?\15\0\0=\14\23\r=\re\f>\f\a\v9\vH\b5\fg\0005\rf\0009\14J\a\15\0\14\0X\15\1Ä\18\14\n\0=\14\"\r4\14\3\0\18\15\2\0'\16A\0B\15\2\2>\15\1\14\18\15\2\0'\16\22\0B\15\2\0?\15\0\0=\14\23\r=\rh\f>\f\b\v9\vH\b5\fj\0005\ri\0009\14J\a\15\0\14\0X\15\1Ä\18\14\n\0=\14\"\r4\14\3\0\18\15\2\0'\16\28\0B\15\2\2>\15\1\14\18\15\2\0'\16\22\0B\15\2\0?\15\0\0=\14\23\r=\rk\f>\f\t\v\15\0\t\0X\v\28Ä9\vH\b5\fo\0005\rm\0003\14l\0=\14\20\r=\t\"\r5\14n\0\18\15\2\0'\16\21\0B\15\2\2>\15\1\14\18\15\2\0'\16\22\0B\15\2\2>\15\2\14=\14\23\r4\14\3\0\18\15\2\0'\16\22\0B\15\2\2>\15\1\14\18\15\2\0'\16\22\0B\15\2\0?\15\0\0=\14$\r=\rp\f>\f\n\v9\vH\b5\fs\0005\rr\0003\14q\0=\14\20\r4\14\3\0\18\15\2\0'\16\21\0B\15\2\2>\15\1\14\18\15\2\0'\16\22\0B\15\2\0?\15\0\0=\14\23\r=\rt\f>\f\v\v9\vu\b5\fx\0005\rw\0003\14v\0=\14\20\r4\14\3\0\18\15\2\0'\16\21\0B\15\2\2>\15\1\14\18\15\2\0'\16\22\0B\15\2\0?\15\0\0=\14\23\r=\ry\f>\f\1\v9\vu\b5\f{\0005\rz\0=\n\"\r4\14\3\0\18\15\2\0'\16#\0B\15\2\2>\15\1\14\18\15\2\0'\16\22\0B\15\2\0?\15\0\0=\14\23\r=\r|\f>\f\2\v9\v}\b5\fÄ\0005\r~\0=\n\"\r4\14\3\0\18\15\2\0'\16\0B\15\2\2>\15\1\14\18\15\2\0'\16\22\0B\15\2\0?\15\0\0=\14\23\r=\rÅ\f>\f\1\v9\v}\b5\fÑ\0005\rÉ\0003\14Ç\0=\14\20\r4\14\3\0\18\15\2\0'\16\21\0B\15\2\2>\15\1\14\18\15\2\0'\16\22\0B\15\2\0?\15\0\0=\14\23\r=\rÖ\f>\f\2\v2\0\0ÄK\0\1\0\22ShortRainbowRight\1\0\0\1\0\0\0\15BufferIcon\1\0\0\vyellow\1\0\1\rprovider\15BufferIcon\21short_line_right\15BufferType\1\0\0\1\0\1\rprovider\17FileTypeName\21ShortRainbowLeft\1\0\0\1\0\0\0\20short_line_left\17RainbowRight\1\0\0\1\0\0\0\16DoomVersion\1\0\0\1\4\0\0\0\0\tbold\1\0\1\14separator\a  \0\15DiffRemove\1\0\0\1\0\2\ticon\tÔëò \rprovider\15DiffRemove\17DiffModified\1\0\0\1\0\2\ticon\tÔëô \rprovider\17DiffModified\fDiffAdd\1\0\0\1\0\2\ticon\tÔëó \rprovider\fDiffAdd\18DiffSeparator\1\0\0\1\0\0\0\14GitBranch\1\0\0\1\4\0\0\0\0\tbold\ngreen\1\0\1\rprovider\14GitBranch\fGitIcon\1\0\0\24check_git_workspace\1\0\1\14separator\6 \0\28ShowLspClientOrFileType\1\0\0\0\1\0\1\14separator\a  \0\15FileEncode\1\0\0\1\0\2\14separator\6 \rprovider\15FileEncode\15FileFormat\1\0\0\18hide_in_width\1\0\2\14separator\a  \rprovider\15FileFormat\nright\19DiagnosticInfo\1\0\0\rlsp_hint\1\0\1\rprovider\19DiagnosticInfo\19DiagnosticWarn\1\0\0\vorange\16lsp_warning\1\0\1\rprovider\19DiagnosticWarn\20DiagnosticError\1\0\0\ticon\6 \14lsp_error\tdoom\1\0\1\rprovider\20DiagnosticError\16LinePercent\1\0\0\1\0\2\14separator\a  \rprovider\16LinePercent\rLineInfo\1\0\0\vfg_alt\1\0\0\0\rFileName\1\0\0\1\4\0\0\0\0\tbold\1\0\2\14separator\6 \rprovider\rFileName\rFileIcon\1\0\0\24get_file_icon_color!galaxyline.provider_fileinfo\1\0\1\rprovider\rFileIcon\rFileSize\1\0\0\24separator_highlight\afg\14condition\21buffer_not_empty\1\0\2\14separator\6 \rprovider\rFileSize\vViMode\1\0\0\1\4\0\0\0\0\tbold\bred\1\0\0\0\16RainbowLeft\1\0\0\14highlight\abg\tblue\rprovider\1\0\0\0\tleft\0\0\1\6\0\0\rNvimTree\vpacker\fminimap\fOutline\15toggleterm\20short_line_list\fsection\25galaxyline.condition\31galaxyline.provider_buffer\28galaxyline.provider_lsp\15galaxyline\abo\bvim\14get_color.doom.modules.config.doom-eviline-palettes\16load_config\21doom.core.config\15doom.utils\frequire\5ÄÄ¿ô\4\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/myles/.local/share/nvim/site/pack/packer/opt/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\2ˆ\n\0\0\4\0\28\0\0316\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\14\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\2=\2\15\0015\2\16\0005\3\17\0=\3\18\0025\3\19\0=\3\20\2=\2\21\0015\2\22\0=\2\23\0015\2\24\0=\2\25\0015\2\26\0=\2\27\1B\0\2\1K\0\1\0\14diff_opts\1\0\1\rinternal\2\28current_line_blame_opts\1\0\2\ndelay\3Ë\a\18virt_text_pos\beol\17watch_gitdir\1\0\2\rinterval\3Ë\a\17follow_files\2\fkeymaps\tn [c\1\2\1\0@&diff ? '[c' : '<cmd>lua require\"gitsigns\".prev_hunk()<CR>'\texpr\2\tn ]c\1\2\1\0@&diff ? ']c' : '<cmd>lua require\"gitsigns\".next_hunk()<CR>'\texpr\2\1\0\n\fnoremap\2\17n <leader>gh2<cmd>lua require\"gitsigns\".preview_hunk()<CR>\17n <leader>gr0<cmd>lua require\"gitsigns\".reset_hunk()<CR>\17n <leader>gb0<cmd>lua require\"gitsigns\".blame_line()<CR>\tx ih2:<C-U>lua require\"gitsigns\".select_hunk()<CR>\17n <leader>gS0<cmd>lua require\"gitsigns\".stage_hunk()<CR>\17n <leader>gu5<cmd>lua require\"gitsigns\".undo_stage_hunk()<CR>\vbuffer\2\17n <leader>gR2<cmd>lua require\"gitsigns\".reset_buffer()<CR>\to ih2:<C-U>lua require\"gitsigns\".select_hunk()<CR>\nsigns\1\0\5\20update_debounce\3d\vlinehl\1\nnumhl\1\18sign_priority\3\6\23current_line_blame\1\17changedelete\1\0\4\ttext\6~\nnumhl\21GitSignsChangeNr\vlinehl\21GitSignsChangeLn\ahl\19GitSignsChange\14topdelete\1\0\4\ttext\b‚Äæ\nnumhl\21GitSignsDeleteNr\vlinehl\21GitSignsDeleteLn\ahl\19GitSignsDelete\vdelete\1\0\4\ttext\6_\nnumhl\21GitSignsDeleteNr\vlinehl\21GitSignsDeleteLn\ahl\19GitSignsDelete\vchange\1\0\4\ttext\b‚îÇ\nnumhl\21GitSignsChangeNr\vlinehl\21GitSignsChangeLn\ahl\19GitSignsChange\badd\1\0\0\1\0\4\ttext\b‚îÇ\nnumhl\18GitSignsAddNr\vlinehl\18GitSignsAddLn\ahl\16GitSignsAdd\nsetup\rgitsigns\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/myles/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim"
  },
  kommentary = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/myles/.local/share/nvim/site/pack/packer/opt/kommentary"
  },
  ["lsp_signature.nvim"] = {
    config = { "\27LJ\2\2?\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14on_attach\18lsp_signature\frequire\0" },
    load_after = {
      ["nvim-compe"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/myles/.local/share/nvim/site/pack/packer/opt/lsp_signature.nvim"
  },
  ["lua-dev.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/myles/.local/share/nvim/site/pack/packer/opt/lua-dev.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\2„\1\0\0\5\0\a\0\0166\0\0\0'\1\1\0B\0\2\0029\0\2\0006\1\0\0'\2\3\0B\1\2\0029\1\4\0015\2\6\0\18\3\0\0'\4\5\0B\3\2\2\15\0\3\0X\4\0ÄB\1\2\1K\0\1\0\1\0\4\21enable_moveright\2\rcheck_ts\2\30enable_check_bracket_line\2\22enable_afterquote\2\15treesitter\nsetup\19nvim-autopairs\23is_plugin_disabled\24doom.core.functions\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/myles/.local/share/nvim/site/pack/packer/opt/nvim-autopairs"
  },
  ["nvim-compe"] = {
    after = { "lsp_signature.nvim" },
    after_files = { "/home/myles/.local/share/nvim/site/pack/packer/opt/nvim-compe/after/plugin/compe.vim" },
    config = { "\27LJ\2\2F\0\1\6\0\3\0\b6\1\0\0009\1\1\0019\1\2\1\18\2\0\0+\3\2\0+\4\2\0+\5\2\0D\1\5\0\27nvim_replace_termcodes\bapi\bvim£\1\0\0\5\0\b\2\0306\0\0\0009\0\1\0009\0\2\0'\1\3\0B\0\2\2\23\0\0\0\b\0\1\0X\1\16Ä6\1\0\0009\1\1\0019\1\4\1'\2\3\0B\1\2\2\18\2\1\0009\1\5\1\18\3\0\0\18\4\0\0B\1\4\2\18\2\1\0009\1\6\1'\3\a\0B\1\3\2\15\0\1\0X\2\3Ä+\1\2\0L\1\2\0X\1\2Ä+\1\1\0L\1\2\0K\0\1\0\a%s\nmatch\bsub\fgetline\6.\bcol\afn\bvim\2\0ï\1\0\0\2\2\6\1\0236\0\0\0009\0\1\0009\0\2\0B\0\1\2\t\0\0\0X\0\4Ä-\0\0\0'\1\3\0D\0\2\0X\0\fÄ-\0\1\0B\0\1\2\15\0\0\0X\1\4Ä-\0\0\0'\1\4\0D\0\2\0X\0\4Ä6\0\0\0009\0\1\0009\0\5\0D\0\1\0K\0\1\0\0¿\1¿\19compe#complete\n<Tab>\n<C-n>\15pumvisible\afn\bvim\2b\0\0\2\1\5\1\0146\0\0\0009\0\1\0009\0\2\0B\0\1\2\t\0\0\0X\0\4Ä-\0\0\0'\1\3\0D\0\2\0X\0\3Ä-\0\0\0'\1\4\0D\0\2\0K\0\1\0\0¿\f<S-Tab>\n<C-p>\15pumvisible\afn\bvim\2®\5\1\0\a\0\26\00026\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\4\0=\2\5\1B\0\2\0013\0\6\0003\1\a\0006\2\b\0003\3\n\0=\3\t\0026\2\b\0003\3\f\0=\3\v\0026\2\r\0009\2\14\0029\2\15\2'\3\16\0'\4\17\0'\5\18\0005\6\19\0B\2\5\0016\2\r\0009\2\14\0029\2\15\2'\3\20\0'\4\17\0'\5\18\0005\6\21\0B\2\5\0016\2\r\0009\2\14\0029\2\15\2'\3\16\0'\4\22\0'\5\23\0005\6\24\0B\2\5\0016\2\r\0009\2\14\0029\2\15\2'\3\20\0'\4\22\0'\5\23\0005\6\25\0B\2\5\0012\0\0ÄK\0\1\0\1\0\1\texpr\2\1\0\1\texpr\2\27v:lua.s_tab_complete()\f<S-Tab>\1\0\1\texpr\2\6s\1\0\1\texpr\2\25v:lua.tab_complete()\n<Tab>\6i\20nvim_set_keymap\bapi\bvim\0\19s_tab_complete\0\17tab_complete\a_G\0\0\vsource\1\0\f\nneorg\2\rnvim_lsp\2\ttags\2\nvsnip\1\15treesitter\2\tpath\2\18snippets_nvim\1\rnvim_lua\2\nspell\1\vbuffer\2\tcalc\1\fluasnip\2\1\0\f\17autocomplete\2\19source_timeout\3»\1\fenabled\2\ndebug\1\14preselect\venable\19max_abbr_width\3d\21incomplete_delay\3ê\3\19max_menu_width\3d\19max_kind_width\3d\15min_length\3\4\18throttle_time\3P\18documentation\2\nsetup\ncompe\frequire\0" },
    load_after = {
      ["nvim-lspconfig"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/myles/.local/share/nvim/site/pack/packer/opt/nvim-compe"
  },
  ["nvim-dap"] = {
    after = { "DAPInstall.nvim", "nvim-dap-ui" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/myles/.local/share/nvim/site/pack/packer/opt/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    config = { "\27LJ\2\2\30\0\0\1\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\1¿\topen\31\0\0\1\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\1¿\nclose\31\0\0\1\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\1¿\ncloseê\4\1\0\6\0\30\0*6\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0029\2\3\0009\2\4\0029\2\5\0023\3\a\0=\3\6\0029\2\3\0009\2\b\0029\2\t\0023\3\n\0=\3\6\0029\2\3\0009\2\b\0029\2\v\0023\3\f\0=\3\6\0029\2\r\0015\3\15\0005\4\14\0=\4\16\0035\4\18\0005\5\17\0=\5\19\4=\4\20\0035\4\22\0005\5\21\0=\5\23\4=\4\24\0035\4\26\0005\5\25\0=\5\23\4=\4\27\0035\4\28\0=\4\29\3B\2\2\0012\0\0ÄK\0\1\0\rfloating\1\0\0\ttray\1\0\2\tsize\3\n\rposition\vbottom\1\2\0\0\trepl\fsidebar\relements\1\0\2\tsize\3(\rposition\tleft\1\5\0\0\vscopes\16breakpoints\vstacks\fwatches\rmappings\vexpand\1\0\4\topen\6o\trepl\6r\tedit\6e\vremove\6d\1\3\0\0\t<CR>\18<2-LeftMouse>\nicons\1\0\0\1\0\2\14collapsed\b‚ñ∏\rexpanded\b‚ñæ\nsetup\0\17event_exited\0\21event_terminated\vbefore\0\17dapui_config\22event_initialized\nafter\14listeners\ndapui\bdap\frequire\0" },
    load_after = {
      ["nvim-dap"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/myles/.local/share/nvim/site/pack/packer/opt/nvim-dap-ui"
  },
  ["nvim-lspconfig"] = {
    after = { "nvim-compe", "nvim-lspinstall" },
    config = { "\27LJ\2\2√\1\0\3\a\0\t\0\30\18\4\0\0009\3\0\0'\5\1\0B\3\3\2\15\0\3\0X\4\1ÄK\0\1\0006\3\2\0009\3\3\0039\3\4\0039\3\5\3\5\1\3\0X\3\6Ä6\3\2\0009\3\6\0039\3\a\3\18\4\0\0B\3\2\1X\3\nÄ6\3\2\0009\3\6\0039\3\b\0034\4\3\0004\5\3\0>\0\1\5>\5\1\4+\5\2\0004\6\0\0B\3\4\1K\0\1\0\14nvim_echo\21nvim_err_writeln\bapi\nERROR\vlevels\blog\bvim\14exit code\nmatch´\f\1\0\n\0/\0V6\0\0\0009\0\1\0006\1\0\0009\1\2\0016\2\3\0'\3\4\0B\2\2\0029\2\5\2B\2\1\0029\3\6\0019\3\a\3B\3\1\0029\4\b\0039\4\t\0049\4\n\4+\5\2\0=\5\v\0049\4\f\0'\5\r\0005\6\14\0009\a\15\0029\a\16\a=\a\17\6B\4\3\0019\4\f\0'\5\18\0005\6\19\0009\a\15\0029\a\20\a=\a\17\6B\4\3\0019\4\f\0'\5\21\0005\6\22\0009\a\15\0029\a\23\a=\a\17\6B\4\3\0019\4\f\0'\5\24\0005\6\25\0009\a\15\0029\a\26\a=\a\17\6B\4\3\0019\4\27\0019\5\29\0019\6\30\0019\6\31\0065\a#\0005\b!\0009\t\15\0029\t \t=\t\"\b=\b$\aB\5\3\2=\5\28\0049\4\27\0016\5\0\0009\5\2\0059\5\29\0056\6\0\0009\6\2\0069\6\27\0069\6&\0065\a'\0B\5\3\2=\5%\0049\4\27\0016\5\0\0009\5\2\0059\5\29\0056\6\0\0009\6\2\0069\6\27\0069\6)\0065\a*\0B\5\3\2=\5(\0049\4\6\0015\5,\0=\5+\0046\4\0\0003\5.\0=\5-\4K\0\1\0\0\vnotify\1\26\0\0\18 Ôíû  (Text) \19 Ôö¶  (Method)\21 Ôûî  (Function)\24 Ôê•  (Constructor)\18 Ô¥≤  (Field)\21[Óúñ] (Variable)\18 Ô†ñ  (Class)\22 Ô∞Æ  (Interface)\19 Ôô®  (Module)\20 Ô™∂ (Property)\17 Ôëµ  (Unit)\18 Ô¢ü  (Value)\16 Ô©ó (Enum)\20 Ô†ä  (Keyword)\20 ÔÉÑ  (Snippet)\18 Ô£ó  (Color)\17 Ôúì  (File)\22 Ôúú  (Reference)\19 Ôùä  (Folder)\23 ÔÖù  (EnumMember)\21 Ô≤Ä  (Constant)\19 Ô≥§  (Struct)\18 ÔÉß  (Event)\21 Ôó´  (Operator)\26 ÔûÉ  (TypeParameter)\23CompletionItemKind\1\0\1\vborder\vsingle\19signature_help\31textDocument/signatureHelp\1\0\1\vborder\vsingle\nhover\23textDocument/hover\17virtual_text\1\0\0\vprefix\1\0\0\21lsp_virtual_text\27on_publish_diagnostics\15diagnostic\twith$textDocument/publishDiagnostics\rhandlers\20lsp_information\1\0\2\vtexthl\"LspDiagnosticsSignInformation\nnumhl\"LspDiagnosticsSignInformation\"LspDiagnosticsSignInformation\rlsp_hint\1\0\2\vtexthl\27LspDiagnosticsSignHint\nnumhl\27LspDiagnosticsSignHint\27LspDiagnosticsSignHint\16lsp_warning\1\0\2\vtexthl\30LspDiagnosticsSignWarning\nnumhl\30LspDiagnosticsSignWarning\30LspDiagnosticsSignWarning\ttext\14lsp_error\tdoom\1\0\2\vtexthl\28LspDiagnosticsSignError\nnumhl\28LspDiagnosticsSignError\28LspDiagnosticsSignError\16sign_define\19snippetSupport\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol\16load_config\21doom.core.config\frequire\blsp\afn\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/myles/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    config = { "\27LJ\2\2Ó\3\0\0\14\3\18\0?-\0\0\0009\0\0\0B\0\1\2-\1\0\0009\1\1\1B\1\1\0026\2\2\0'\3\3\0B\2\2\0029\2\4\2B\2\1\0029\3\5\0026\4\6\0\18\5\3\0B\4\2\4X\a,Ä\18\t\b\0\18\v\b\0009\n\a\b'\f\b\0'\r\t\0B\n\4\2\18\v\n\0009\n\a\n'\f\n\0'\r\t\0B\n\4\2\18\b\n\0\18\v\t\0009\n\v\t'\f\f\0B\n\3\2\15\0\n\0X\v\26Ä-\n\1\0009\n\r\n\18\v\0\0\18\f\b\0B\n\3\2\14\0\n\0X\n\19Ä-\n\1\0009\n\r\n\18\v\1\0\18\f\b\0B\n\3\2\15\0\n\0X\v\5Ä-\n\0\0009\n\14\n\18\v\b\0B\n\2\1X\n\aÄ-\n\2\0009\n\15\n'\v\16\0\18\f\b\0'\r\17\0&\v\r\vB\n\2\1E\a\3\3R\a“K\0\1\0\4¿\1¿\0¿; does not have a server, please remove the \"+lsp\" flag\18The language \twarn\19install_server\14has_value\n%+lsp\tfind\15%s+%+debug\5\r%s+%+lsp\tgsub\vipairs\nlangs\16load_doomrc\28doom.core.config.doomrc\frequire\22available_servers\22installed_servers§\1\0\0\b\2\6\0\0256\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\0026\1\3\0\18\2\0\0B\1\2\4H\4\rÄ\a\5\4\0X\6\6Ä-\6\0\0009\6\4\0069\6\5\6-\a\1\0B\6\2\1X\6\5Ä-\6\0\0008\6\5\0069\6\5\0064\a\0\0B\6\2\1F\4\3\3R\4ÒK\0\1\0\2¿\3¿\nsetup\blua\npairs\22installed_servers\15lspinstall\frequire5\0\0\2\1\3\0\a-\0\0\0B\0\1\0016\0\0\0009\0\1\0'\1\2\0B\0\2\1K\0\1\0\6¿\fbufdo e\bcmd\bvim√\2\1\0\t\0\19\0)6\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0026\2\0\0'\3\3\0B\2\2\0026\3\0\0'\4\4\0B\3\2\0029\3\5\0035\4\r\0005\5\v\0005\6\t\0005\a\a\0005\b\6\0=\b\b\a=\a\n\6=\6\f\5=\5\3\4B\3\2\0026\4\0\0'\5\14\0B\4\2\0029\5\5\4B\5\1\0013\5\15\0\18\6\5\0B\6\1\0013\6\16\0\18\a\6\0B\a\1\0016\a\0\0'\b\14\0B\a\2\0023\b\18\0=\b\17\a2\0\0ÄK\0\1\0\0\22post_install_hook\0\0\15lspinstall\1\0\0\rsettings\1\0\0\bLua\1\0\0\14workspace\1\0\0\1\0\1\20preloadFileSize\3»\1\nsetup\flua-dev\14lspconfig\15doom.utils\24doom.extras.logging\frequire\0" },
    load_after = {
      ["nvim-lspconfig"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/myles/.local/share/nvim/site/pack/packer/opt/nvim-lspinstall"
  },
  ["nvim-mapper"] = {
    config = { "\27LJ\2\2≈\1\0\0\b\0\v\0\0226\0\0\0'\1\1\0B\0\2\0029\0\2\0006\1\0\0'\2\1\0B\1\2\0029\1\3\0016\2\0\0'\3\4\0B\2\2\0029\2\5\0025\3\6\0006\4\a\0009\4\b\4'\5\t\0\18\6\0\0\18\a\1\0B\4\4\2=\4\n\3B\2\2\1K\0\1\0\16search_path\f%s%slua\vformat\vstring\1\0\1\vno_map\1\nsetup\16nvim-mapper\bsep\14doom_root\21doom.core.system\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/myles/.local/share/nvim/site/pack/packer/opt/nvim-mapper"
  },
  ["nvim-tree-docs"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/myles/.local/share/nvim/site/pack/packer/opt/nvim-tree-docs"
  },
  ["nvim-tree.lua"] = {
    commands = { "NvimTreeClipboard", "NvimTreeClose", "NvimTreeFindFile", "NvimTreeOpen", "NvimTreeRefresh", "NvimTreeToggle" },
    config = { "\27LJ\2\2˜\21\0\0\n\0z\0ñ\0026\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\0026\1\0\0'\2\3\0B\1\2\0029\1\4\0016\2\5\0009\2\6\0025\3\b\0=\3\a\0026\2\5\0009\2\6\2)\3\1\0=\3\t\0026\2\5\0009\2\6\0029\3\v\0009\3\f\3=\3\n\0026\2\5\0009\2\6\2)\3\1\0=\3\r\0026\2\5\0009\2\6\2)\3\1\0=\3\14\0026\2\5\0009\2\6\2'\3\16\0=\3\15\0026\2\5\0009\2\6\2)\3\1\0=\3\17\0026\2\5\0009\2\6\2)\3\1\0=\3\18\0026\2\5\0009\2\6\2)\3Ù\1=\3\19\0026\2\5\0009\2\6\0025\3\22\0005\4\21\0=\4\23\0035\4\24\0=\4\25\3=\3\20\0026\2\5\0009\2\6\0025\3\27\0=\3\26\0026\2\5\0009\2\6\0025\3\29\0=\3\28\0026\2\5\0009\2\6\0025\3\31\0005\4 \0=\4!\0035\4\"\0=\4#\3=\3\30\0026\2\0\0'\3$\0B\2\2\0029\2%\0025\3&\0004\4\0\0=\4'\0035\4+\0006\5\0\0'\6(\0B\5\2\0029\5)\5'\6*\0B\5\2\2\15\0\5\0X\6\0Ä5\5-\0009\6\v\0009\6,\6=\6.\0059\6\v\0009\6/\6=\0060\0059\6\v\0009\0061\6=\0062\0059\6\v\0009\0063\6=\0064\5=\0055\4=\0046\0035\0047\0004\5\0\0=\0058\4=\0049\0035\4:\0004\5\0\0=\5;\4=\4<\0035\4>\0009\5\v\0009\5=\5=\5?\0049\5\v\0009\5@\5\15\0\5\0X\6\2Ä'\5A\0X\6\1Ä'\5B\0=\5C\0045\5D\0004\6\24\0005\aF\0005\bE\0=\bG\a\18\b\1\0'\tH\0B\b\2\2=\bI\a>\a\1\0065\aK\0005\bJ\0=\bG\a\18\b\1\0'\tL\0B\b\2\2=\bI\a>\a\2\0065\aM\0\18\b\1\0'\tN\0B\b\2\2=\bI\a>\a\3\0065\aO\0\18\b\1\0'\tP\0B\b\2\2=\bI\a>\a\4\0065\aQ\0\18\b\1\0'\tR\0B\b\2\2=\bI\a>\a\5\0065\aS\0\18\b\1\0'\tT\0B\b\2\2=\bI\a>\a\6\0065\aU\0\18\b\1\0'\tT\0B\b\2\2=\bI\a>\a\a\0065\aV\0\18\b\1\0'\tW\0B\b\2\2=\bI\a>\a\b\0065\aX\0\18\b\1\0'\tY\0B\b\2\2=\bI\a>\a\t\0065\aZ\0\18\b\1\0'\t[\0B\b\2\2=\bI\a>\a\n\0065\a\\\0\18\b\1\0'\t]\0B\b\2\2=\bI\a>\a\v\0065\a^\0\18\b\1\0'\t_\0B\b\2\2=\bI\a>\a\f\0065\a`\0\18\b\1\0'\ta\0B\b\2\2=\bI\a>\a\r\0065\ab\0\18\b\1\0'\tc\0B\b\2\2=\bI\a>\a\14\0065\ad\0\18\b\1\0'\te\0B\b\2\2=\bI\a>\a\15\0065\af\0\18\b\1\0'\tg\0B\b\2\2=\bI\a>\a\16\0065\ah\0\18\b\1\0'\ti\0B\b\2\2=\bI\a>\a\17\0065\aj\0\18\b\1\0'\tk\0B\b\2\2=\bI\a>\a\18\0065\al\0\18\b\1\0'\tm\0B\b\2\2=\bI\a>\a\19\0065\an\0\18\b\1\0'\to\0B\b\2\2=\bI\a>\a\20\0065\ap\0\18\b\1\0'\tq\0B\b\2\2=\bI\a>\a\21\0065\ar\0\18\b\1\0'\ts\0B\b\2\2=\bI\a>\a\22\0065\at\0\18\b\1\0'\tu\0B\b\2\2=\bI\a>\a\23\6=\6v\5=\5w\4=\4x\3B\2\2\0016\2\5\0009\2y\0026\3\0\0'\4$\0B\3\2\0029\3]\3)\4\25\0B\2\3\1K\0\1\0\rdefer_fn\tview\rmappings\tlist\16toggle_help\1\0\1\bkey\ag?\nclose\1\0\1\bkey\6q\vdir_up\1\0\1\bkey\6-\18next_git_item\1\0\1\bkey\a]c\18prev_git_item\1\0\1\bkey\a[c\npaste\1\0\1\bkey\6p\tcopy\1\0\1\bkey\6c\bcut\1\0\1\bkey\6x\16full_rename\1\0\1\bkey\n<C-r>\vrename\1\0\1\bkey\6r\vremove\1\0\1\bkey\6d\vcreate\1\0\1\bkey\6a\frefresh\1\0\1\bkey\6R\20toggle_dotfiles\1\0\1\bkey\6H\19toggle_ignored\1\0\1\bkey\6I\fpreview\1\0\1\bkey\n<Tab>\1\0\1\bkey\v<S-CR>\15close_node\1\0\1\bkey\t<BS>\vtabnew\1\0\1\bkey\n<C-t>\nsplit\1\0\1\bkey\n<C-x>\vvsplit\1\0\1\bkey\n<C-v>\acd\1\0\0\1\4\0\0\t<CR>\19<2-RightMouse>\n<C-]>\acb\tedit\bkey\1\0\0\1\3\0\0\6o\18<2-LeftMouse>\1\0\1\16custom_only\1\tside\tleft\nright\19explorer_right\nwidth\1\0\1\16auto_resize\2\18sidebar_width\16system_open\targs\1\0\0\24update_focused_file\16ignore_list\1\0\2\15update_cwd\2\venable\2\16diagnostics\nicons\nerror\14lsp_error\fwarning\16lsp_warning\tinfo\20lsp_information\thint\1\0\0\rlsp_hint\1\0\1\venable\2\blsp\23is_plugin_disabled\24doom.core.functions\23ignore_ft_on_setup\1\0\a\15update_cwd\2\16open_on_tab\2\15auto_close\1\18open_on_setup\1\18disable_netrw\1\18hijack_cursor\2\17hijack_netrw\2\nsetup\14nvim-tree\vfolder\1\0\6\fdefault\bÓóø\15empty_open\bÔÑï\topen\bÓóæ\nempty\bÔÑî\fsymlink\bÔíÇ\17symlink_open\bÓóæ\bgit\1\0\5\runstaged\b‚úó\14untracked\b‚òÖ\runmerged\bÓúß\frenamed\b‚ûú\vstaged\b‚úì\1\0\2\fdefault\bÓòí\fsymlink\bÔíÅ\20nvim_tree_icons\1\0\4\ffolders\3\1\nfiles\3\1\bgit\3\1\18folder_arrows\3\0\25nvim_tree_show_icons\1\0\3\rMAKEFILE\3\1\rMakefile\3\1\14README.md\3\1\28nvim_tree_special_files\fbuftype\1\2\0\0\rterminal\rfiletype\1\0\0\1\4\0\0\vnotify\vpacker\aqf$nvim_tree_window_picker_exclude\27nvim_tree_refresh_wait\26nvim_tree_group_empty\27nvim_tree_add_trailing\a:~#nvim_tree_root_folder_modifier\24nvim_tree_gitignore\21nvim_tree_git_hl\16show_hidden\tdoom\28nvim_tree_hide_dotfiles\29nvim_tree_indent_markers\1\5\0\0\t.git\17node_modules\v.cache\16__pycache__\21nvim_tree_ignore\6g\bvim\23nvim_tree_callback\21nvim-tree.config\16load_config\21doom.core.config\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/myles/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    after = { "nvim-ts-context-commentstring", "nvim-tree-docs", "nvim-ts-autotag" },
    config = { "\27LJ\2\2∞\2\0\1\v\1\r\00054\1\0\0006\2\0\0\18\3\0\0B\2\2\4X\5\"Ä\a\6\1\0X\a\16Ä6\a\2\0009\a\3\a\18\b\1\0'\t\4\0B\a\3\0016\a\2\0009\a\3\a\18\b\1\0'\t\5\0B\a\3\0016\a\2\0009\a\3\a\18\b\1\0'\t\6\0B\a\3\1X\a\16Ä\18\b\6\0009\a\a\6'\t\b\0'\n\t\0B\a\4\2\18\b\a\0009\a\a\a'\t\n\0'\n\t\0B\a\4\2\18\6\a\0006\a\2\0009\a\3\a\18\b\1\0\18\t\6\0B\a\3\1E\5\3\3R\5‹-\2\0\0\18\3\1\0'\4\v\0B\2\3\2\15\0\2\0X\3\5Ä6\2\2\0009\2\3\2\18\3\1\0'\4\f\0B\2\3\1L\1\2\0\0¿\btsx\15typescript\15%s+%+debug\5\r%s+%+lsp\tgsub\ttoml\tyaml\tjson\vinsert\ntable\vconfig\vipairsû\a\1\0\n\0*\0H6\0\0\0'\1\1\0B\0\2\0029\0\2\0006\1\0\0'\2\3\0B\1\2\0029\1\4\1B\1\1\0026\2\0\0'\3\5\0B\2\2\0023\3\6\0006\4\0\0'\5\a\0B\4\2\0029\4\b\4B\4\1\0025\5\r\0005\6\n\0005\a\v\0=\a\f\6=\6\14\5=\5\t\0046\5\15\0\15\0\5\0X\6\tÄ6\5\15\0009\5\16\5\15\0\5\0X\6\5Ä6\5\17\0009\5\18\0059\6\19\1'\a\t\0B\5\3\0016\5\0\0'\6\20\0B\5\2\0025\6\22\0=\6\21\0056\5\0\0'\6\23\0B\5\2\0029\5\24\0055\6\25\0\18\a\3\0009\b\19\1B\a\2\2=\a\26\0065\a\27\0=\a\28\0065\a\31\0009\b\29\2'\t\30\0B\b\2\2\15\0\b\0X\t\0Ä=\a\30\0065\a \0=\a!\0065\a\"\0=\a#\0065\a$\0=\a%\0065\a&\0005\b'\0=\b(\a=\a)\6B\5\2\0012\0\0ÄK\0\1\0\fautotag\14filetypes\1\t\0\0\thtml\15javascript\20javascriptreact\15typescript\20typescriptreact\vsvelte\bvue\rmarkdown\1\0\1\venable\2\26context_commentstring\1\0\1\venable\2\14tree_docs\1\0\1\venable\2\vindent\1\0\1\venable\2\1\0\1\venable\2\14autopairs\23is_plugin_disabled\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\nsetup\28nvim-treesitter.configs\1\2\0\0\bgcc\14compilers\28nvim-treesitter.install\nlangs\vinsert\ntable\nneorg\19packer_plugins\17install_info\1\0\0\nfiles\1\3\0\0\17src/parser.c\19src/scanner.cc\1\0\2\vbranch\tmain\burl3https://github.com/nvim-neorg/tree-sitter-norg\tnorg\23get_parser_configs\28nvim-treesitter.parsers\0\24doom.core.functions\16load_doomrc\28doom.core.config.doomrc\14has_value\15doom.utils\frequire\0" },
    loaded = false,
    needs_bufread = true,
    path = "/home/myles/.local/share/nvim/site/pack/packer/opt/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/myles/.local/share/nvim/site/pack/packer/opt/nvim-ts-autotag"
  },
  ["nvim-ts-context-commentstring"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/myles/.local/share/nvim/site/pack/packer/opt/nvim-ts-context-commentstring"
  },
  ["nvim-web-devicons"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/myles/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/myles/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["persistence.nvim"] = {
    config = { "\27LJ\2\2É\1\0\0\4\0\n\0\0156\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\b\0006\2\3\0009\2\4\0029\2\5\2'\3\6\0B\2\2\2'\3\a\0&\2\3\2=\2\t\1B\0\2\1K\0\1\0\bdir\1\0\0\15/sessions/\tdata\fstdpath\afn\bvim\nsetup\16persistence\frequire\0" },
    loaded = true,
    path = "/home/myles/.local/share/nvim/site/pack/packer/start/persistence.nvim"
  },
  ["plenary.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/myles/.local/share/nvim/site/pack/packer/opt/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/myles/.local/share/nvim/site/pack/packer/opt/popup.nvim"
  },
  ["range-highlight.nvim"] = {
    config = { "\27LJ\2\2=\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20range-highlight\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/myles/.local/share/nvim/site/pack/packer/opt/range-highlight.nvim"
  },
  ["symbols-outline.nvim"] = {
    commands = { "SymbolsOutline", "SymbolsOutlineOpen", "SymbolsOutlineClose" },
    config = { "\27LJ\2\2È\2\0\0\4\0\15\0\0226\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\0026\1\3\0009\1\4\0015\2\6\0009\3\a\0009\3\b\3\15\0\3\0X\4\2Ä'\3\t\0X\4\1Ä'\3\n\0=\3\v\0025\3\f\0=\3\r\0024\3\0\0=\3\14\2=\2\5\1K\0\1\0\18lsp_blacklist\fkeymaps\1\0\6\17code_actions\6a\18rename_symbol\6r\17hover_symbol\14<C-space>\18goto_location\t<CR>\19focus_location\6o\nclose\n<Esc>\rposition\nright\tleft\19explorer_right\tdoom\1\0\2\16show_guides\2\27highlight_hovered_item\2\20symbols_outline\6g\bvim\16load_config\21doom.core.config\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/myles/.local/share/nvim/site/pack/packer/opt/symbols-outline.nvim"
  },
  ["telescope.nvim"] = {
    commands = { "Telescope" },
    config = { "\27LJ\2\2ˇ\n\0\0\t\0008\0\\6\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0029\2\3\0005\0034\0005\4\5\0005\5\4\0=\5\6\0045\5\a\0005\6\b\0=\6\t\0055\6\n\0=\6\v\5=\5\f\0046\5\0\0'\6\r\0B\5\2\0029\5\14\5=\5\15\0045\5\16\0=\5\17\0046\5\0\0'\6\r\0B\5\2\0029\5\18\5=\5\19\0044\5\0\0=\5\20\0045\5\21\0=\5\22\0045\5\23\0=\5\24\0046\5\0\0'\6\25\0B\5\2\0029\5\26\0059\5\27\5=\5\28\0046\5\0\0'\6\25\0B\5\2\0029\5\29\0059\5\27\5=\5\30\0046\5\0\0'\6\25\0B\5\2\0029\5\31\0059\5\27\5=\5 \0046\5\0\0'\6\25\0B\5\2\0029\5!\5=\5!\0045\5/\0005\6#\0009\a\"\1=\a$\0069\a%\1=\a&\0069\a'\0019\b(\1 \a\b\a=\a)\0069\a*\1=\a+\0069\a,\0019\b-\1 \a\b\a=\a.\6=\0060\0055\0061\0009\a\"\1=\a$\0069\a%\1=\a&\0069\a'\0019\b(\1 \a\b\a=\a)\6=\0062\5=\0053\4=\0045\3B\2\2\0019\0026\0'\0037\0B\2\2\1K\0\1\0\vmapper\19load_extension\rdefaults\1\0\0\rmappings\6n\1\0\0\6i\1\0\0\t<CR>\vcenter\19select_default\14<Leader>f\nclose\n<C-q>\16open_qflist\25smart_send_to_qflist\n<C-k>\28move_selection_previous\n<C-j>\1\0\0\24move_selection_next\27buffer_previewer_maker\21qflist_previewer\22vim_buffer_qflist\19grep_previewer\23vim_buffer_vimgrep\19file_previewer\bnew\19vim_buffer_cat\25telescope.previewers\fset_env\1\0\1\14COLORTERM\14truecolor\16borderchars\1\t\0\0\b‚îÄ\b‚îÇ\b‚îÄ\b‚îÇ\b‚ï≠\b‚ïÆ\b‚ïØ\b‚ï∞\vborder\19generic_sorter\29get_generic_fuzzy_sorter\25file_ignore_patterns\1\4\0\0\t.git\17node_modules\16__pycache__\16file_sorter\19get_fuzzy_file\22telescope.sorters\18layout_config\15horizontal\1\0\2\vmirror\1\18preview_width\4≥ÊÃô\3≥Êåˇ\3\rvertical\1\0\1\vmirror\1\1\0\3\20prompt_position\vbottom\19preview_cutoff\3x\nwidth\4\0ÄÄ†ˇ\3\17find_command\1\0\n\17initial_mode\vinsert\20layout_strategy\15horizontal\23selection_strategy\nreset\ruse_less\2\21sorting_strategy\15descending\18prompt_prefix\v ÔÄÇ  \20scroll_strategy\ncycle\rwinblend\3\0\19color_devicons\2\20selection_caret\6 \1\a\0\0\arg\17--no-heading\20--with-filename\18--line-number\r--column\17--smart-case\nsetup\22telescope.actions\14telescope\frequire\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/myles/.local/share/nvim/site/pack/packer/opt/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\2?\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    path = "/home/myles/.local/share/nvim/site/pack/packer/start/todo-comments.nvim"
  },
  ["toggleterm.nvim"] = {
    commands = { "ToggleTerm", "TermExec" },
    config = { "\27LJ\2\2–\3\0\0\5\0\19\0\0306\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\0026\1\0\0'\2\3\0B\1\2\0029\1\4\0015\2\a\0009\3\5\0009\3\6\3=\3\b\0024\3\0\0=\3\t\0029\3\5\0009\3\n\3=\3\v\0025\3\f\0009\4\5\0009\4\r\4=\4\14\0039\4\5\0009\4\6\4=\4\15\0035\4\16\0=\4\17\3=\3\18\2B\1\2\1K\0\1\0\15float_opts\15highlights\1\0\2\15background\vNormal\vborder\fSpecial\vheight\nwidth\19terminal_width\1\0\2\rwinblend\3\0\vborder\vcurved\14direction\23terminal_direction\20shade_filetypes\tsize\1\0\6\20shade_terminals\2\17open_mapping\t<F4>\17persist_size\2\18close_on_exit\2\20start_in_insert\2\17hide_numbers\2\20terminal_height\tdoom\nsetup\15toggleterm\16load_config\21doom.core.config\frequire\0" },
    keys = { { "", "n" }, { "", "<F4>" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/myles/.local/share/nvim/site/pack/packer/opt/toggleterm.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\0029\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/home/myles/.local/share/nvim/site/pack/packer/start/trouble.nvim"
  },
  ["vim-superman"] = {
    loaded = true,
    path = "/home/myles/.local/share/nvim/site/pack/packer/start/vim-superman"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\2â\31\0\0\6\0µ\1\0Ç\0026\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0029\2\3\1+\3\0\0=\3\4\0029\2\5\0005\3\t\0005\4\6\0005\5\a\0=\5\b\4=\4\n\0035\4\v\0=\4\3\0035\4\f\0=\4\r\0035\4\14\0=\4\15\0035\4\17\0005\5\16\0=\5\18\4=\4\19\0035\4\21\0005\5\20\0=\5\22\4=\4\23\0035\4\24\0=\4\25\3B\2\2\0015\2\27\0005\3\26\0=\3\28\0025\3\29\0=\3\30\0025\3\31\0=\3 \0025\3!\0=\3\"\0025\3#\0=\3$\0025\3%\0=\3&\0025\3'\0=\3(\0025\3)\0=\3*\0025\3+\0005\4,\0=\4-\0035\4.\0=\4/\0035\0040\0=\0041\0035\0042\0=\0043\0035\0044\0=\0045\0035\0046\0=\0047\0035\0048\0=\0049\0035\4:\0=\4;\3=\0031\0025\3<\0005\4=\0=\4>\0035\4?\0=\4@\0035\4A\0=\0041\0035\4B\0=\4-\0035\4C\0=\4&\0035\4D\0005\5E\0=\5F\0045\5G\0=\5H\4=\4I\0035\4J\0005\5K\0=\5L\0045\5M\0=\5>\0045\5N\0=\5I\0045\5O\0=\5P\0045\5Q\0=\5R\4=\4P\3=\3-\0025\3S\0005\4T\0=\0041\0035\4U\0=\4-\0035\4V\0=\4I\0035\4W\0=\4X\0035\4Y\0=\4@\0035\4Z\0=\4[\0035\4\\\0=\4H\0035\4]\0=\4P\3=\3I\0025\3^\0005\4_\0=\4-\0035\4`\0=\0045\0035\4a\0=\4/\0035\4b\0=\4c\0035\4d\0=\4@\0035\4e\0=\4f\0035\4g\0=\4[\3=\3/\0025\3h\0005\4i\0=\4j\0035\4k\0=\4P\0035\4l\0=\4;\0035\4m\0=\4n\0035\4o\0=\4H\0035\4p\0=\4X\0035\4q\0=\4[\0035\4r\0=\4@\0035\4s\0=\4&\0035\4t\0=\0041\0035\4u\0=\4v\0035\4w\0=\4-\3=\0037\0025\3x\0005\4y\0=\4-\0035\4z\0=\4{\0035\4|\0=\4>\0035\4}\0=\4;\0035\4~\0=\4H\0035\4\0=\4n\3=\3;\0025\3Ä\0005\4Å\0=\4R\0035\4Ç\0=\4f\0035\4É\0=\4@\3=\3R\0025\3Ñ\0005\4Ö\0=\0047\0035\4Ü\0=\0041\0035\4á\0=\4H\0035\4à\0=\4&\0035\4â\0=\4(\3=\3H\0025\3ä\0005\4ã\0=\4f\0035\4å\0=\4I\0035\4ç\0=\4é\0035\4è\0=\4ê\0035\4ë\0=\4í\0035\4ì\0=\4&\0035\4î\0=\4ï\0035\4ñ\0=\4P\0035\4ó\0=\4ò\0035\4ô\0=\4ö\0035\4õ\0=\4ú\0035\4ù\0=\4û\0035\4ü\0=\4†\0035\4°\0=\4¢\0035\4£\0=\4H\0035\4§\0=\4*\3=\3f\0025\3•\0005\4¶\0=\0041\0035\4ß\0=\4I\0035\4®\0=\4F\0035\4©\0=\4@\0035\4™\0=\4(\0035\4´\0=\4H\0035\4¨\0=\4c\3=\3j\0025\3≠\0005\4Æ\0=\4L\0035\4Ø\0=\4ï\0035\4∞\0=\4ò\0035\4±\0=\4;\0035\4≤\0=\4c\3=\3ï\0029\3≥\0\18\4\2\0005\5¥\0B\3\3\1K\0\1\0\1\0\1\vprefix\r<leader>\rregister\1\2\0\0\16jump to tag\1\2\0\0\18pop tag stack\1\2\0\0\17jump forward\1\2\0\0\14jump back\1\2\0\0\19Alternate file\1\0\1\tname\v+jumps\1\2\0\0\rTerminal\1\2\0\0\fSymbols\1\2\0\0\fMinimap\1\2\0\0\24Ranger File Browser\1\2\0\0\18Tree Explorer\1\2\0\0\17Start screen\1\2\0\0\18Debugging UI \1\0\1\tname\n+open\1\2\0\0\23Split window right\1\2\0\0\23Split window below\6=\1\2\0\0\19Balance window\6K\1\2\0\0\21Expand window up\6L\1\2\0\0\24Expand window right\6J\1\2\0\0\24Expand window below\6H\1\2\0\0\23Expand window left\6k\1\2\0\0\14Window up\1\2\0\0\17Window right\6j\1\2\0\0\17Window below\1\2\0\0\16Window left\0062\1\2\0\0\26Layout double columns\6|\1\2\0\0\23Split window right\6-\1\2\0\0\23Split window below\1\2\0\0\18Delete window\1\2\0\0\17Other window\1\0\1\tname\r+windows\1\2\0\0\17Jump to mark\1\2\0\0\20Command history\1\2\0\0\16Goto symbol\1\2\0\0\vBuffer\1\2\0\0\tGrep\1\0\1\tname\f+search\1\2\0\0%Restore previously saved session\1\2\0\0\18Save and quit\1\2\0\0\tQuit\1\0\1\tname\19+quit/sessions\1\2\0\0\19Plugins status\1\2\0\0\22Sync your plugins\1\2\0\0000Profile the time taken loading your plugins\1\2\0\0\28Install missing plugins\6C\1\2\0\0!Compile your plugins changes\1\2\0\0%Clean disabled or unused plugins\1\0\1\tname\r+plugins\1\2\0\0\fCommits\6B\1\2\0\0\rBranches\1\2\0\0\15Blame line\1\2\0\0\17Preview hunk\1\2\0\0\15Reset hunk\1\2\0\0\17Reset buffer\1\2\0\0\20Undo stage hunk\1\2\0\0\vStatus\6S\1\2\0\0\15Stage hunk\1\2\0\0\tPush\1\2\0\0\tPull\6o\1\2\0\0\17Open LazyGit\1\0\1\tname\t+git\1\2\0\0'Re-open file with sudo permissions\6w\1\2\0\0%Write file with sudo permissions\1\2\0\0\26Recently opened files\6t\1\2\0\0\14Help tags\1\2\0\0\15Find files\1\2\0\0 Create a new unnamed buffer\1\2\0\0\30Edit Neovim configuration\1\0\1\tname\n+file\1\2\0\0 Reload user custom settings\1\2\0\0\23Change colorscheme\6R\1\2\0\0\24Create crash report\1\2\0\0\31Rollback Doom Nvim version\6u\1\2\0\0\21Update Doom Nvim\1\2\0\0!Open Doom Nvim documentation\1\2\0\0&Edit your Doom Nvim configuration\1\2\0\0\26Show Doom keybindings\1\0\1\tname\n+doom\6q\1\2\0\0#Diagnostics into location list\6l\1\2\0\0\26Show line diagnostics\1\2\0\0\25Show type definition\1\2\0\0\rLsp info\6a\1\2\0\0\17Code actions\1\0\1\tname\t+lsp\6d\6s\1\2\0\0\23Evaluate selection\6e\1\2\0\0\31Evaluate word under cursor\1\0\1\tname\v+debug\1\2\0\0?Run restclient on the line that the cursor is currently on\1\2\0\0\28Compile and run project\1\2\0\0\20Compile project\6r\1\2\0\0\21Run current file\6i\1\2\0\0\17Start a REPL\1\0\1\tname\n+code\6p\1\2\0\0\20Previous buffer\6[\1\2\0\0\20Previous buffer\6g\1\2\0\0\16Goto buffer\6n\1\2\0\0\16Next buffer\6]\1\2\0\0\16Next buffer\6b\1\2\0\0\27Switch to other buffer\6f\1\2\0\0\18Format buffer\6c\1\2\0\0\25Close current buffer\1\0\1\tname\r+buffers\6v\1\2\0\0\tSave\6m\1\2\0\0\tSave\6h\1\2\0\0\fManpage\6:\1\2\0\0\20Command history\6/\1\2\0\0\18Search a word\6,\1\2\0\0\18Switch buffer\6.\1\2\0\0\17Browse files\6`\1\0\0\1\2\0\0\14Find file\vhidden\1\t\0\0\r<silent>\n<Cmd>\n<cmd>\v<Plug>\tcall\blua\a^:\a^ \vlayout\vheight\1\0\2\nalign\tleft\fspacing\3\3\1\0\2\bmax\3\n\bmin\3\1\vwindow\fpadding\1\0\0\1\5\0\0\3\0\3\0\3\0\3\0\15key_labels\1\0\3\t<cr>\bRET\f<space>\bSPC\n<tab>\bTAB\nicons\1\0\3\ngroup\6+\14separator\b‚ûú\15breadcrumb\a¬ª\1\0\n\azf\16Create fold\6!#Filter though external program\ag~\16Toggle case\6d\vDelete\agU\14Uppercase\6>\17Indent right\6c\vChange\6y\16Yank (copy)\agu\14Lowercase\t<lt>\16Indent left\fplugins\1\0\3\19ignore_missing\2\14show_help\2\rtriggers\tauto\fpresets\1\0\a\6g\2\6z\2\fwindows\2\fmotions\2\bnav\2\17text_objects\2\14operators\1\1\0\2\14registers\1\nmarks\1\nsetup\agc\14operators\30which-key.plugins.presets\14which-key\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/myles/.local/share/nvim/site/pack/packer/opt/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^cmd%-parser"] = "cmd-parser.nvim",
  ["^lua%-dev"] = "lua-dev.nvim",
  ["^nvim%-mapper"] = "nvim-mapper",
  ["^nvim%-web%-devicons"] = "nvim-web-devicons",
  ["^plenary"] = "plenary.nvim",
  ["^popup"] = "popup.nvim",
  ["^telescope"] = "telescope.nvim",
  ["^toggleterm"] = "toggleterm.nvim",
  ["^toggleterm%.terminal"] = "toggleterm.nvim"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\2?\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\0029\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: persistence.nvim
time([[Config for persistence.nvim]], true)
try_loadstring("\27LJ\2\2É\1\0\0\4\0\n\0\0156\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\b\0006\2\3\0009\2\4\0029\2\5\2'\3\6\0B\2\2\2'\3\a\0&\2\3\2=\2\t\1B\0\2\1K\0\1\0\bdir\1\0\0\15/sessions/\tdata\fstdpath\afn\bvim\nsetup\16persistence\frequire\0", "config", "persistence.nvim")
time([[Config for persistence.nvim]], false)
-- Config for: dashboard-nvim
time([[Config for dashboard-nvim]], true)
try_loadstring("\27LJ\2\2≥\26\0\0\t\0;\0Ç\0016\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\0026\1\3\0009\1\4\0016\2\0\0'\3\6\0B\2\2\0029\2\a\2'\3\b\0&\2\3\2=\2\5\0016\1\3\0009\1\4\1'\2\n\0=\2\t\0016\1\3\0009\1\4\0015\2\15\0005\3\r\0005\4\f\0=\4\14\3=\3\16\0025\3\18\0005\4\17\0=\4\14\3=\3\19\0025\3\21\0005\4\20\0=\4\14\3=\3\22\0025\3\24\0005\4\23\0=\4\14\3=\3\25\0025\3\27\0005\4\26\0=\4\14\3=\3\28\0025\3\30\0005\4\29\0=\4\14\3=\3\31\0025\3!\0005\4 \0=\4\14\3=\3\4\2=\2\v\0016\1\3\0009\1\4\0014\2\3\0'\3#\0006\4\3\0009\4$\0049\4%\4'\5&\0006\6\3\0009\6$\0069\6'\0066\a\3\0009\a$\a9\a(\a6\b\3\0009\b\4\b9\b)\bB\a\2\0A\6\0\0A\4\1\2'\5*\0&\3\5\3>\3\1\2=\2\"\0019\1+\0009\1,\1\14\0\1\0X\1\4Ä6\1\3\0009\1\4\1)\2\1\0=\2-\0016\1\3\0009\1\4\0016\2\3\0009\2/\0029\3+\0009\3.\3B\2\2\2\15\0\2\0X\3\3Ä5\0020\0\14\0\2\0X\3\2Ä9\2+\0009\2.\2=\2.\0016\1\3\0009\0011\1'\0022\0009\3+\0009\0033\0039\0034\3&\2\3\2B\1\2\0016\1\3\0009\0011\1'\0025\0009\3+\0009\0033\0039\0036\3&\2\3\2B\1\2\0016\1\3\0009\0011\1'\0027\0009\3+\0009\0033\0039\0038\3&\2\3\2B\1\2\0016\1\3\0009\0011\1'\0029\0009\3+\0009\0033\0039\3:\3&\2\3\2B\1\2\1K\0\1\0\17footer_color!hi! dashboardFooter   guifg=\19shortcut_color!hi! dashboardShortcut guifg=\17center_color!hi! dashboardCenter   guifg=\17header_color\28dashboard_custom_colors!hi! dashboardHeader   guifg=\bcmd\1\22\0\0S                                                                              S=================     ===============     ===============   ========  ========S\\\\ . . . . . . .\\\\   //. . . . . . .\\\\   //. . . . . . .\\\\  \\\\. . .\\\\// . . //S||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\\/ . . .||S|| . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||S||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||S|| . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\\ . . . . ||S||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\\_ . .|. .||S|| . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\\ `-_/| . ||S||_-' ||  .|/    || ||    \\|.  || `-_|| ||_-' ||  .|/    || ||   | \\  / |-_.||S||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \\  / |  `||S||    `'         || ||         `'    || ||    `'         || ||   | \\  / |   ||S||            .===' `===.         .==='.`===.         .===' /==. |  \\/  |   ||S||         .=='   \\_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \\/  |   ||S||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \\/  |   ||S||   .=='    _-'          `-__\\._-'         `-_./__-'         `' |. /|  |   ||S||.=='    _-'                                                     `' |  /==.||S=='    _-'                        N E O V I M                         \\/   `==S\\   _-'                                                                `-_   /T `''                                                                      ``'  T                                                                               \16tbl_isempty\28dashboard_custom_header!dashboard_disable_statusline\23dashboard_statline\tdoom\14 seconds.\15start_time\freltime\17reltimefloat\t%.3f\vprintf\afn\25Doom Nvim loaded in \28dashboard_custom_footer\1\0\1\fcommand\16h doom_nvim\1\2\0\0000ÔÄ≠  Open Documentation             SPC d d\6f\1\0\1\fcommand5lua require(\"doom.core.functions\").edit_config()\1\2\0\0000Ôë¢  Open Private Configuration     SPC d c\6e\1\0\1\fcommand\24Telescope live_grep\1\2\0\0000ÔáÇ  Find Word                      SPC s g\6d\1\0\1\fcommand\25Telescope find_files\1\2\0\0000Ôú°  Find File                      SPC f f\6c\1\0\1\fcommand\20Telescope marks\1\2\0\0000ÔÄÆ  Jump to Bookmark               SPC s m\6b\1\0\1\fcommand\23Telescope oldfiles\1\2\0\0000ÔÖú  Recently Opened Files          SPC f r\6a\1\0\0\16description\1\0\1\fcommand5lua require('persistence').load({ last = true })\1\2\0\0000ÔÄû  Load Last Session              SPC s r\29dashboard_custom_section\14telescope dashboard_default_executive\14/sessions\14doom_root\21doom.core.system dashboard_session_directory\6g\bvim\16load_config\21doom.core.config\frequire\0", "config", "dashboard-nvim")
time([[Config for dashboard-nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file SymbolsOutlineClose lua require("packer.load")({'symbols-outline.nvim'}, { cmd = "SymbolsOutlineClose", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Telescope lua require("packer.load")({'telescope.nvim'}, { cmd = "Telescope", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file SymbolsOutlineOpen lua require("packer.load")({'symbols-outline.nvim'}, { cmd = "SymbolsOutlineOpen", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeOpen lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeOpen", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeClose lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeClose", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TermExec lua require("packer.load")({'toggleterm.nvim'}, { cmd = "TermExec", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file ToggleTerm lua require("packer.load")({'toggleterm.nvim'}, { cmd = "ToggleTerm", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file SymbolsOutline lua require("packer.load")({'symbols-outline.nvim'}, { cmd = "SymbolsOutline", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeToggle lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeRefresh lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeRefresh", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeFindFile lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeFindFile", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeClipboard lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeClipboard", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[noremap <silent> <F4> <cmd>lua require("packer.load")({'toggleterm.nvim'}, { keys = "<lt>F4>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> n <cmd>lua require("packer.load")({'toggleterm.nvim'}, { keys = "n", prefix = "" }, _G.packer_plugins)<cr>]]
time([[Defining lazy-load keymaps]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au ColorScheme * ++once lua require("packer.load")({'nvim-dap', 'galaxyline.nvim', 'bufferline.nvim', 'nvim-lspconfig'}, { event = "ColorScheme *" }, _G.packer_plugins)]]
vim.cmd [[au BufWinEnter * ++once lua require("packer.load")({'kommentary', 'format.nvim', 'LuaSnip'}, { event = "BufWinEnter *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'nvim-autopairs'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufRead * ++once lua require("packer.load")({'range-highlight.nvim', 'gitsigns.nvim'}, { event = "BufRead *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
