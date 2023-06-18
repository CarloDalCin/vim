# vim
my .vimrc config

1. install [vim-plug](https://github.com/junegunn/vim-plug)
>if you are in linux just copy this command in the terminal:

```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

2. to copy my configuration run this command:

```sh
git clone https://github.com/CarloDalCin/vim
```
>you **have to** run it into **HOME** (~)

3. run `PlugInstall` inside vim
4. if you want to use [YouCompleteMe](https://vimawesome.com/plugin/youcompleteme) just search for "valloric/youcompleteme" inside the downloaded ".vimrc" file and uncomment it
5. now run in the terminal `cd ~/.vim/plugged/youcompleteme` and then for C++ run `./install.py --clangd-completer`
> if you want support for another language look the [git repositories](https://github.com/ycm-core/YouCompleteMe)
