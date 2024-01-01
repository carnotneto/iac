#!/bin/bash

echo "creating directories..."

mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec

echo "creating usergroups..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "creating users and adding them into groups..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt password123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt password123) -G GRP_ADM
useradd john -m -s /bin/bash -p $(openssl passwd -crypt password123) -G GRP_ADM

useradd deborah -m -s /bin/bash -p $(openssl passwd -crypt password123) -G GRP_VEN
useradd sebastian -m -s /bin/bash -p $(openssl passwd -crypt password123) -G GRP_VEN
useradd robert -m -s /bin/bash -p $(openssl passwd -crypt password123) -G GRP_VEN

useradd josephine -m -s /bin/bash -p $(openssl passwd -crypt password123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt password123) -G GRP_SEC
useradd roger -m -s /bin/bash -p $(openssl passwd -crypt password123) -G GRP_SEC

echo "specifying directories permissions..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /public

echo "all procedures finalized!"
