
sudo userdel -r p1c1_2024_u2 2>/dev/null
sudo groupdel p1c1_2024_Todos 2>/dev/null

sudo groupadd p1c1_2024_Todos
sudo useradd -m -s /bin/bash -g p1c1_2024_Todos p1c1_2024_u2
echo "p1c1_2024_u2:clave" | sudo chpasswd 
sudo usermod -aG p1c1_2024_Todos p1c1_2024_u1
sudo chgrp -R p1c1_2024_Todos /datos
sudo chmod -R g+rwX /datos
sudo chmod o+rx /datos
sudo find /datos -type f -exec chmod o-r {} \;
sudo -u p1c1_2024_u2 sh -c 'id >> /datos/validar1.txt'

echo "=> Validacion final:"
ls -ld /datos
ls -l /datos
echo "=> Contenido del archivo validar1.txt:"
sudo cat /datos/validar1.txt
