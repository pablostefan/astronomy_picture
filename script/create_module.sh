#!/bin/bash

module="module"

read -p "Qual o nome do modulo? " module


echo "Criando o modulo - $module"

cd ..

flutter create -t module $module

cd $module

rm -rf .android \
       .dart_tool \
       .idea \
       .ios \
       .gitignore \
        test \
        README.md \
        lib/main.dart

echo "Modulo - $module - criado com sucesso."


