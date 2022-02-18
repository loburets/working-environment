Добавить "Send text as start" для того чтобы SourceTree нормально работало с хуками:

```shell
ps aux | grep -v grep | grep Sourcetree || open /Applications/SourceTree.app/Contents/MacOS/SourceTree
```

Ипортировать профайл из json файла и сделать дефолтным iterm-profile.json

Установить oh my zsh

```shell
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Установить плагины:

```shell
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

```

Установить Powerlevel10k
```shell
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

Установить nvm

```shell
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
```

Заменить файлы в корневой папке юзера:
.p10k.zsh
.zshrc

В этих файлах заменить dmitryloburets на имя (папку) юзера
