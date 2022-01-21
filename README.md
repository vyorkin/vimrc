# Setup

Install rbenv, python, python3.

```sh
gem install neovim
npm install -g neovim
```

Install `cpplint`

```sh
pip3 install cpplint
```

Install `rnvimr` dependencies

```sh
pip3 install ranger-fm pynvim
pip3 install ueberzug
```
## Coc

Run

```sh
:CocConfig
```

And add

"coc.preferences.formatOnSaveFiletypes": ["rust"]
```

## Treesitter

```sh
:TSInstall <language_to_install>
```

List available languages and their installation status with:

```sh
:TSInstallInfo
```

Updating:

```sh
:TSUpdate
```
