mkdir -p ~/Punto_F
echo "Mi ip publica es: $(curl -s ifconfig.me)" > ~/Punto_F/Filtro_Avanzado.txt
grep -m1 "model name" /proc/cpuinfo | awk -F: '{print "CPU Modelo:" $2}' >> ~/Punto_F/Filtro_Avanzado.txt
grep -m1 "cpu MHz" /proc/cpuinfo | awk -F: '{print "Frecuencia:" $2}' >> ~/Punto_F/Filtro_Avanzado.txt


