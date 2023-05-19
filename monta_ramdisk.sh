#!/bin/bash
# -*- coding: utf-8 -*-
#
#   script para montar RAMDISK de 1 GB
#
#                                                   FJCT
#                                                   04/2023
#
#   uso : # sh monta_ramdisk.sh 1024m    ou
#         # sh monta_ramdisk.sh 1G
#
# teste de escrita
#dd if=/dev/zero of=/tmp/ramdisk/zero bs=4k count=100000
#
# teste de leitura
#dd if=/tmp/ramdisk/zero of=/dev/null bs=4k count=100000
#
#

declare TT
declare USO
declare USO2
declare CAMINHO
declare NOME

TT=""
 USO="uso : # sh monta_ramdisk.sh 1024m"
USO2="ou    # sh monta_ramdisk.sh 1G"
NOME="ramdisk"
CAMINHO="/tmp/$NOME"

shopt -s -o nounset

# pega parametro
TT=$1

# se tem parametros
if [ -n "$TT" ]  ;
then
	# se diretorio não existe
	if [ ! -d $CAMINHO ]
	then
		printf "\n     %s \n" "montando temporário $CAMINHO" 
	    
	    # cria diretório ramdisk em /tmp
	    #~ `mkdir /tmp/ramdisk`
	    `mkdir $CAMINHO`
	    
	    # libera permissoes
	    #~ `chmod 777 /tmp/ramdisk`
	    `chmod 777 $CAMINHO`	    
	else
		printf "\n     %s \n" "...temporário $CAMINHO já existe !" 
	fi
    

    
    # se não está montado
	if ( ! grep $CAMINHO /proc/mounts ) ;
        then
	        printf "\n     %s \n\n" "montando disco virtual $NOME de $TT na memoria RAM" 
		    # monta  partição tmpfs com nome de myramdisk no diretorio montado
		    #~ `mount -t tmpfs -o size=$TT myramdisk /tmp/ramdisk`
		    `mount -t tmpfs -o size=$TT $NOME $CAMINHO`

		    # cria link simbolico
		    #~ `ln -s /tmp/ramdisk ramdisk`
		    `ln -s $CAMINHO $NOME`
	    else
		    printf "\n     %s \n" "... disco virtual $CAMINHO já existe !"
	fi
else

    printf "\n %s \n %s \n" USO USO2

fi


