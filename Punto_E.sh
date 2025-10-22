mkdir -p ~/Punto_E

grep -i 'MemTotal:' /proc/meminfo > ~/Punto_E/Filtro_basico.txt

grep -m1 'model name' /proc/cpuinfo >> ~/Punto_E/Filtro_basico.txt

grep -m1 'cpu MHz' /proc/cpuinfo >> ~/Punto_E/Filtro_basico.txt

echo "==> contenido del Punto_E"
cat ~/Punto_E/Filtro_basico.txt

