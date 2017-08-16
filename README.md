# Descripción

Es la configuración con los plugins que utilizo, por lo que se va a pisar todo lo que ya se tenga configurado en .vimrc

# Cómo se instala?

1. Clonamos el repositorio en .vim

````bash
rm -rf ~/.vim
git clone https://github.com/Frankz/vimrc_config.git ~/.vim
````

2. Luego traer el plugin de Vundle para que se traiga el resto

````bash
mkdir ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
````

3. Instalamos los Vundle y los demás Plugins desde bash

Aparecerá el mensaje de error 

````
Error detected while processing /yourUser/.vim/vimrc:
line  145:
E185: Cannot find color scheme 'solarized'
Press ENTER or type command to continue
````

Lo ignoramos y presionamos "Enter".

````bash
vim +PluginInstall +qall
````

NOTA: Se está presentando el siguiente error "Taglist: Exuberant ctags (http://ctags.sf.net) not found in PATH. Plugin is not loaded", queda pendiente corregirlo.
