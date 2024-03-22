#!/bin/bash

build_type="appbundle"

read -p "Qual tipo? [appbundle ou apk]: " build_type

while true; do
    read -p "Você setou a buildNumber na KryktoAppSettings? y[SIM] n[NAO]:" yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) exit;;
        * ) echo "Erro: Você precisa escolher y[SIM] ou n[NAO].";;
    esac
done

if [ $build_type = 'appbundle' ]; then
    build_type="appbundle"
elif [ $build_type = 'apk' ]; then
    build_type="apk"
else
    echo "Erro: Você precisa definir o tipo de build. 'apk' ou 'appbundle'"
    exit 0;
fi

echo "Iniciando build do app Android"

cd ../alpha_conds/ && \
rm -rf android/.gradle && \
flutter clean && \
flutter build $build_type --obfuscate --split-debug-info=build/app/outputs/symbols

echo "Termino da geração build do app Android"