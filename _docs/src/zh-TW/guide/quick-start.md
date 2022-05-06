# 快速上手

## 將 Repository Clone 至本機

將程式碼庫 Clone 至 `~/.dotfiles` 中。

```bash
git clone git@github.com:peterhpchen/dotfiles.git ~/.dotfiles
```

::: tip 提醒
你也可以將程式碼庫 Clone 至其他地方，但是要記得修改配置的路徑：

* `zsh/alias.zsh` 的 `dfs`
* `script/_bash.sh` 的 `DOTFILES_ROOT`
* `.symlink.zshenv` 的 `DOTFILES_ROOT`
:::

## 執行安裝腳本

執行 `~/.dotfiles/script/install` 安裝所需的應用程式。

```bash
bash ~/.dotfiles/script/install
```

## 執行 link 腳本

執行 `~/.dotfiles/script/symlink` ，將配置檔案 link 至對應的路徑。

```bash
bash ~/.dotfiles/script/symlink
```

::: danger
在執行前請確認環境中相關路徑是否已有檔案存在，如果有的話，需要手動將其刪除，否則會造成檔案錯置。
:::
