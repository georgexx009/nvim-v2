local os = vim.loop.os_uname().sysname;

-- Set path to python binary
if os == "Darwin" then
  vim.g.python3_host_prog='/usr/local/bin/python3'
else
  vim.g.python3_host_prog='/usr/bin/python'
end