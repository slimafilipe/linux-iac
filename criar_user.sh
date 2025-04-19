#!bin/bash
echo "Iniciando criação de usuarios e grupos..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

useradd carlos -c "Carlos" -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_ADM
useradd maria -c "Maria" -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_ADM
useradd joao -c "Joao" -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_ADM
useradd debora -c "Debora" -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana" -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_VEN
useradd roberto -c "Roberto" -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_VEN
useradd josefina -c "Josefina" -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_SEC
useradd amanda -c "Amanda" -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_SEC
useradd rogerio -c "Rogerio" -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_SEC

chown carlos:GRP_ADM /adm
chown debora:GRP_VEN /ven
chown josefina:GRP_SEC /sec

chmod 750 /adm/
chmod 750 /ven/
chmod 750 /sec/

echo "Finalizado!"
