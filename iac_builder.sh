#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /database
mkdir /infraestrutura
mkdir /desenvolvimento
mkdir /seguranca

echo " Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useadd jose -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_DBA
useadd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_DBA
useadd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_DBA

useadd joaquim -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_INF
useadd sebastiao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_INF

useadd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_DEV
useadd carla -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_DEV
useadd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_DEV

useadd joana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useadd alberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios"

chown root:GRP_DBA /database
chown root:GRP_INF /infraestrutura
chown root:GRP_DEV /desenvolvimento
chown root:GRP_SEC /seguranca

chmod 770 /database
chmod 770 /infraestrutura
chmod 770 /desenvolvimento
chmod 770 /seguranca
chmod 777 /publico

echo "Script encerrado."