require('mason-tool-installer').setup {

  ensure_installed = {
  -- python
    'black',
    'mypy',
    'flake8',
    'isort',
    -- zig
    'zls',
  },
  }
