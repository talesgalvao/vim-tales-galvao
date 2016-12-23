SETUP
---------
 *  Coloque o conteúdo do projeto no diretório ~/.vim
 *  Crie um link do arquivo .vimrc para sua home:
```shell
ln -s ~/.vim/.vimrc ~/.vimrc`)
```
 *  Crie o diretório ~/.vim/undo para o desfazer persistente (desfaz mesmo fechando o arquivo e abrindo novamente)
 *  Instale os submodules do git: `git submodule init` e `git submodule update` para instalar o `vundle`
 *  Abra o vim (sem arquivos) e rode um `:BundleInstall`, ou chame assim: `vim +BundleInstall`. Dessa forma ele instala os Bundles.
