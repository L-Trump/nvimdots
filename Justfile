# just is a command runner, Justfile is very similar to Makefile, but simpler.

set shell := ["fish", "-c"]

default:
    @just --list

[group('neovim')]
nvim-test:
  rm -rf "$HOME/.config/nvim"
  rsync -avz --copy-links --chmod=D2755,F744 ./ "$HOME/.config/nvim/"

[group('neovim')]
nvim-clean:
  rm -rf "$HOME/.config/nvim"
