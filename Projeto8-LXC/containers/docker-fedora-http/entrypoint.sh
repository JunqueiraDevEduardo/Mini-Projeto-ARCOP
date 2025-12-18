#!/bin/bash

MOTO_ATUAL=${ENGINE_TYPE:-"SISTEMA DESCONHECIDO"}
COR_ATUAL=${ENGINE_COLOR:-"#555555"}

echo "Configurando site para: $MOTO_ATUAL com cor $COR_ATUAL"


sed -i "s|{{NOME_MOTOR}}|$MOTO_ATUAL|g" /var/www/html/index.html


sed -i "s|#CCCCCC|$COR_ATUAL|g" /var/www/html/index.html

exec /usr/sbin/httpd -D FOREGROUND