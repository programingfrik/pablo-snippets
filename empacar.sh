#!/bin/bash

# Este script es para empacar todos los snippets para distribuirlos si es necesario.

# Este script asume que está siendo ejecutado desde el directorio raíz del proyecto.

zip -r -x@nocopiar.txt pablo-snippets.zip ./
