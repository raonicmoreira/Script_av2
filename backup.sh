#!/bin/bash

arq=$1

linhasArq=$(wc -l < $arq)

if [[ linhasArq -lt 100 ]]
then
	mv $arq PastaPequena
	echo "Arquivo movido para PastaPequena "
elif [[ linhasArq -gt 100 ]] && [[ linhasArq -lt 500 ]]
then
	mv $arq PastaMedia
	echo "Arquivo movido para PastaMedia"
else
	mv $arq PastaGrande
	echo "Arquivo movido para PastaGrande"
fi
