#!/bin/bash

echo "Criando diretorios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Ceiando os grupos de usuarios"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando usuario "

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria-m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao-m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd sebora-m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana-m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto-m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd jesefina-m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda-m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio-m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "especificando permissões ao grupo"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

acho "FIM"
