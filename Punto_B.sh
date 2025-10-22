sudo groupadd p1c1_2024_g1
sudo useradd -m -s /bin/bash -G p1c1_2024_g1 p1c1_2024_u1
echo "p1c1_2024_u1:clave1" | sudo chpasswd 

sudo mkdir -p /datos 

sudo chown p1c1_2024_u1:p1c1_2024_g1 /datos

sudo chmod 750 /datos

sudo -u p1c1_2024_u1 sh -c 'whoami > /datos/validar1.txt'

echo "=> Propiedades del directorio /datos:"
ls -ld /datos
echo "=> Contenido del archivo validar1.txt:"
sudo cat /datos/validar1.txt
