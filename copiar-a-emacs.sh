#!/bin/bash

# Este script es para mandar los snippets al directorio de emacs.

# Este script asume que está siendo ejecutado desde el directorio raíz del proyecto.

# TODO: Como obtener la ruta actual en la que se encuentra este script

rsync -truv --exclude-from=nocopiar.txt ./ ~/.emacs.d/snippets
