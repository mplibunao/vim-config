-- Add custom menu items alongside Neovim's defaults
-- We're NOT using aunmenu PopUp to avoid conflicts with Neovim's internal menu management
vim.cmd [[
  anoremenu PopUp.Inspect     <cmd>Inspect<CR>
  amenu PopUp.-1-             <NOP>
  nnoremenu PopUp.Back        <C-t>
  amenu PopUp.-2-             <NOP>
  amenu PopUp.URL         gx
]]

local group = vim.api.nvim_create_augroup("nvim_popupmenu", { clear = true })
vim.api.nvim_create_autocmd("MenuPopup", {
  pattern = "*",
  group = group,
  desc = "Custom PopUp Setup",
  callback = function()
    -- Disable URL menu item by default (using silent! to avoid errors)
    vim.cmd [[
      silent! amenu disable PopUp.URL
    ]]

    -- Use pcall to safely try to get URLs (since _get_urls is an internal function)
    local ok, ui_module = pcall(require, "vim.ui")
    if ok and ui_module._get_urls then
      -- Protected call to get URLs in case it fails
      local urls_ok, urls = pcall(ui_module._get_urls)
      if urls_ok and urls and urls[1] and vim.startswith(urls[1], "http") then
        -- Enable URL menu item only if cursor is on an HTTP URL
        vim.cmd [[silent! amenu enable PopUp.URL]]
      end
    end
  end,
})

-- https://terminal.shop
