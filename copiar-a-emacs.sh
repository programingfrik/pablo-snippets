#!/bin/bash

# Este script es para mandar los snippets al directorio de emacs.

# Busca la ruta del directorio del proyecto
echo $0
dirpro=`echo $0 | sed "s/\(.\+\)\?copiar-a-emacs.sh/\1/"`

# Si dirpro está vacio porque pwd es el directorio del proyecto, ponle
# una referencia al directorio actual para que el parámetro origen del
# rsync no esté vacío.
if [[ $dirpro = "" ]] then
   dirpro="./"
fi

# Sincroniza el directorio del proyecto con el directorio de los snippets de emacs.
rsync -truv --exclude-from=${dirpro}nocopiar.txt ${dirpro} ~/.emacs.d/snippets
