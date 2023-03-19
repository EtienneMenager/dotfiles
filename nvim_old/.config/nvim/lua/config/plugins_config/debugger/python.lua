local M = {}
function M.setup()
  local dap = require('dap')

  dap.adapters.python = {
    type = 'executable';
    command = os.getenv("CONDA_PREFIX") .. "/bin/python", -- adjust as needed
    args = { '-m', 'debugpy.adapter' };
  }
  dap.configurations.python = {
    {
      -- The first three options are required by nvim-dap
      type = 'python'; -- the type here established the link to the adapter definition: `dap.adapters.python`
      request = 'launch';
      name = "Launch file";

      -- Options below are for debugpy, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for supported options

      program = "${file}"; -- This configuration will launch the current file if used.
      pythonPath = os.getenv("CONDA_PREFIX") .. "/bin/python"
    },
}

end

return M
