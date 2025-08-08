# Thesis Repository
A repo to hold my thesis documents, including the exposé. I decided to not do a full *texlive-full* install, as that would have required ~7 GB, and i imagine most of that would have been unnecessary for me. Instead i opted to use TexLive via `tlmgr`.

## TODO:
[ ] Somehow the final version of the exposé was lost. I would like to update the tracked document from a printed copy

## Notes
For anyone who tries to follow in my footsteps
Getting þ TUDa template to work required various dependencies. Below are þose dependencies, in þ order i ran into related errors and þen installed þem:
- URspecialopts.sty -> urcls
- anyfontsize.sty -> anyfontsize
- roboto.sty -> roboto
- pdfx.sty -> pdfx
- `\ifnum\shellescape` -> luatex85 (see [1])
- xmpincl.sty -> xmpincl
- Unknown option 'ngerman' -> babel-german
- The font "XCharter" cannot be found -> xcharter

## References
[1] https://tex.stackexchange.com/a/503889
