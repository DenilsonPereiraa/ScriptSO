#!/bin/bash

clear

echo "Criadores"
echo "Richard"
echo "Eduardo"
echo "Denilson"
echo
echo "ATIVIDADE"
echo "---------------------------------------------"
echo "| 1. Limpar arquivos temporários (dump)      |"
echo "| 2. Verificar espaço em discos             |"
echo "| 3. Verificar Ip de rede e mascaras        |"
echo "| 4. Verificar Informações do sistema       |"
echo "| 5. Sair                                   |"
echo "---------------------------------------------"

read -p "Escolha uma opcao: " opcao
echo "------------------------------"

case $opcao in
    1)
        echo "Limpando arquivos temporários..."
        cleanmgr /sagerun:1
        echo "Arquivos temporários limpos com sucesso."
        ;;
    2)
        echo "Verificando espaço em disco..."
        wmic logicaldisk get caption,description,freespace,size
        echo "Espaço em disco verificado com sucesso."
        ;;
    3)
        echo "Fazendo backup de arquivos importantes..."
        ipconfig
        echo "Backup concluído com sucesso."
        ;;
    4)
        echo "Verificando Informações do sistema..."
        systeminfo
        echo "Verificando Informações do sistema com sucesso."
        ;;
    5)
        echo "Saindo..."
        for i in {5..1}; do
            echo "BYE em $i"
            sleep 1
            clear
            echo "BYE em $i"
            sleep 1
            clear
        done
        exit 0
        ;;
    *)
        echo "Opção inválida!"
        ;;
esac

# Retorna ao menu principal após a operação
sleep 2
clear
bash "$0"
