Dotfiles
========

This is a repository for bootstrapping my dotfiles with [Dotbot][dotbot].

In general, you should be using symbolic links for everything, and using git
submodules whenever possible.

To keep submodules at their proper versions, you could include something like
`git submodule update --init --recursive` in your `install.conf.yaml`.

To upgrade your submodules to their latest versions, you could periodically run
`git submodule update --init --remote`.

Adding a vim plugin
-------------------

I use vim 8 packages. To install a plugin, I use this very repository!
I add submodules to `config/vim/pack/plugins/start/`. Since `$XDG_DATA_HOME`
points to `$HOME/.config` which is a symbolic link to this repo's `config/`,
vim uses these submodules as packages without any additional configuration.

Check out `.gitmodules` file.

License
-------

This software is hereby released into the public domain. That means you can do
whatever you want with it without restriction. See `LICENSE.md` for details.

That being said, I would appreciate it if you could maintain a link back to
Dotbot (or this repository) to help other people discover Dotbot.

[dotbot]: https://github.com/anishathalye/dotbot
