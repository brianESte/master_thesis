# Thesis Repository

A repo to hold my thesis documents, including the exposé. I decided to not do a full *texlive-full* install, as that would have required ~7 GB, and I imagine most of that would have been unnecessary for me. Instead I opted to use TexLive via `tlmgr`. I also ran into issues using `tlmgr`: to avoid using sudo with each call to `install` I `chown`ed the entire /usr/local/texlive/ dir so that
```sh
$ tlmgr install <package name>
```
could be run without sudo privileges.

## TODO:

- [x] Somehow the final version of the exposé was lost. I would like to update the tracked document from a printed copy
- [x] Related Work
- [x] Background
- [x] Methodology
- [x] Discussion
- [x] Conclusion
- [x] Introduction
- [x] Finish fixing HK edits
- [x] Finish fixing EL edits
- [ ] Figure out how to "link" TUDa template to git repo?
- [ ] Maybe try to clean up the IGD logo svg file?

Reminders:
- et al. is written with a .
- Figure, Chapter, Section, Table, Equation, etc are all capitalized when referencing a particular thereof.
- Conforming to this template, there is no point in referencing a subsubsection by `\label{}` / `\ref{}` because the number shown will be at most that of the containing subsection. Thus it is (probably) better to reference subsubsections by name instead.

## Notes

### TUDa Template Installation

For anyone who tries to follow in my footsteps
Getting the TUDa template to work required various dependencies. Below are those dependencies, in the order i ran into related errors and then installed them:
- URspecialopts.sty &rarr; urcls
- anyfontsize.sty &rarr; anyfontsize
- roboto.sty &rarr; roboto
- pdfx.sty &rarr; pdfx
- `\ifnum\shellescape` &rarr; luatex85 (see [1])
- xmpincl.sty &rarr; xmpincl
- Unknown option 'ngerman' &rarr; babel-german
- The font "XCharter" cannot be found &rarr; xcharter

#### Warnings

- XCharter (apparently) depends on fontaxes, even though it has been deprecated... &rarr; fontaxes
- Biblatex warns the user if BibTeX is used in place of Biber, because Biber has more functionality than BibTeX / others[7]. Simply switching to Biber quells the warning.
- Missing German hyphenation patterns &rarr; hyphen-german

### NeoVim

I am in the process of setting up NeoVim to work properly with LaTeX. So far VimTeX and TexLab have been integrated, and auto-completion and syntax highlighting works. The following resources helped me thus far: [2,3,5,6].
I noticed that when trying to use a new package, even after installing with `tlmgr`, the TeX LSP continues to insist that it cannot find the sought package. Running vim-tex clean: `<leader>lc` fixes this.

### LaTeX

#### Floats

Floats seem to place themselves where i want them with when they are placed at the top / beginning of a section/chapter and the text that describe them thereafter.
The text then "floats" up to fill empty space caused by the actual floats being forced down, typically because they are too large for whatever space was initially alloted them.

#### TikZ datavisualization vs PGFplots

Initially i tried using TikZ's datavisualization library, and it worked pretty well.
I ended up switching to PGFplots when i discovered that i could achieve what i wanted with it while using less code.

## References

- [1] https://tex.stackexchange.com/a/503889
- [2] https://github.com/lervag/vimtex
- [3] https://github.com/nvim-lua/kickstart.nvim/issues/1466
- [4] https://manpages.ubuntu.com/manpages/bionic/man1/latexmk.1L.html
- [5] https://blog.epheme.re/software/nvim-latex.html
- [6] https://inwon.net/blog/vimtex-neovim
- [7] https://tex.stackexchange.com/a/365075
