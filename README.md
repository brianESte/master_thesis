# Thesis Repository
A repo to hold my thesis documents, including the exposé. I decided to not do a full *texlive-full* install, as that would have required ~7 GB, and I imagine most of that would have been unnecessary for me. Instead I opted to use TexLive via `tlmgr`. I also ran into issues using `tlmgr`: to avoid using sudo with each call to `install` I `chown`ed the entire /usr/local/texlive/ dir so that
```sh
$ tlmgr install <package name>
```
could be run without sudo privileges.

## TODO:
- [x] Somehow the final version of the exposé was lost. I would like to update the tracked document from a printed copy
- [ ] Begin writing background chapter
- [ ] Maybe try to clean up the IGD logo svg file?

## Notes
For anyone who tries to follow in my footsteps
Getting the TUDa template to work required various dependencies. Below are those dependencies, in the order i ran into related errors and then installed them:
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
