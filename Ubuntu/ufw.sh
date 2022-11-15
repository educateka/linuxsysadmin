#Configurar reglas default
sudo ufw default allow outgoing
sudo ufw default deny incoming

#crear reglas
sudo ufw allow <puerto>/<protocolo>
sudo ufw allow from <x.x.x.x> to any port <puerto>

#revisar estatus y habilitar ufw
sudo ufw status
sudo ufw show added
sudo ufw enable

#remover reglas
sudo ufw delete allow <puerto>

#Deshabilitar UFW
sudo ufw disable

#UFW Loggin
sudo ufw logging on

#Estructura del Log
[UFW BLOCK]: descripción del evento logueado
IN: Entrada
OUT: Salida 
MAC: MAC Address de Origen y Destino 
SRC: IP de Origen
DST: IP de Destino
LEN: Tamaño del paquete
TTL: Tiempo de vida del paquete
PROTO: Protocolo
SPT: Puerto de Origen
DPT: Puerto Destino del paquete
WINDOW: Tamaño de la ventana
SYN URGP: Indica si 3W es requerido 0 si no lo es