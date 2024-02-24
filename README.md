# templaty.nvim

This repository contains a plugin for [Neovim][1] that enables file type detection, syntax
highlighting and much more for the [Templaty template engine][2].

[1]: https://neovim.io/
[2]: https://github.com/samvv/Templaty

## Installation

The preferred way is through [`lazy.nvim`][3]:

```lua
require("lazy").setup({
  -- ...
  "samvv/templaty.nvim"
  -- ...
}
```

[3]: https://github.com/folke/lazy.nvim

## Usage

Just start writing something! As long as your file extensions end with `.tply`,
this plugin will automatically trigger.

## License

This software is generously licensed under the MIT license.
