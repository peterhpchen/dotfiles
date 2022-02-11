# 目錄結構

彼得的 Dotfiles 參考許多優秀的 Dotfiles 結構，並且加上自身的用途進行改良，下面是個 nvm 配置的架構：

```
.
|- /node.nvm （類別）
  |- /.nvm
    |- default-packages.symlink （ Link 檔）
  |- install.sh （安裝腳本）
  |- path.zsh （執行檔）
  |- setup.zsh （執行檔）
```

## 第一層資料夾「分類」

目錄的第一層資料夾除了以 `_` 前綴的特殊目錄外，都為各種設定檔的「分類」，用以區隔不同的配置：

```
.
|- /alacritty （ terminal emulator ）
|- /macos （ operating system ）
|- /tmux （ terminal multiplexer ）
|- /nvim （ editor ）
|- /zsh （ shell ）
|- ...
```

如果同個類別中有不同的工具需要設置的話，可以使用 `[類別].[工具]` 的方式命名資料夾：

```
.
|- zsh
|- zsh.powerlevel10k （ Zsh 的 theme ）
|- zsh.zplug （ Zsh 的 package manager ）
|- zsh.zsh-history-substring-search （ Zsh 的 history search ）
```

## 「安裝」腳本

指令 `install` 會去尋找所有的 `install.sh` 並且執行，因此如果此工具需要安裝時，可以建立 `install.sh` ：

```
.
|- /fzf
  |- install.sh （ fzf 的安裝腳本）
```

::: warning 注意
為避免被 Zsh 啟動時執行，安裝腳本都應該避免使用 `.zsh` 格式。
:::

## 「執行」腳本

許多的工具在啟動終端時會需要進行初始程序才能使用，執行腳本的設置，可以讓使用者在啟動 Zsh 時執行這些必須的程序：

```
.
|- /bat
  |- path.zsh （ bat 的參數初始化）
```

這些執行腳本除了必須是 `.zsh` 格式外，並沒有對名稱有硬性要求，因此使用者可以依照設置的特性分為不同的檔案。

## 「解安裝」腳本

指令 `uninstall` 會去尋找所有的 `uninstall.sh` 並且執行，因此如果此工具需要解安裝時，可以建立 `uninstall.sh` ：

```
.
|- /homebrew
  |- uninstall.sh （ Homebrew 的解安裝腳本）
```

::: warning 注意
為避免被 Zsh 啟動時執行，解安裝腳本都應該避免使用 `.zsh` 格式。
:::

## Link 檔

檔名中有 `.symlink` 的檔案都會被視為要 soft link 至目錄 `$HOME` 的檔案，其 link 的方式會依照設定的路徑（忽略第一層）對應至 `$HOME` 中，並且在對應後會刪去 `.symlink` 作為檔名。

以 `vim` 來說：

```
.
|- /vim
  |- .symlink.vimrc
```

`.symlink.vimrc` 會被 link 至 `$HOME/.vimrc` 。

再以 `nvim` 舉例：

```
.
|- /nvim
  |- /.config
    |- init.symlink.lua
```

`init.symlink.lua` 會被 link 至 `$HOME/.config/init.lua` 。