# kali_dockerizado_rdp

1. Construye la imagen:

docker build -t kali-xrdp .

2. Ejecuta el contenedor:

docker run -d -p 3389:3389 5432:5432 kali-xrdp

3. Credenciales de acceso al RDP:
usuario: kali
contraseña: kali


NOTA:

Para levantar el contenedor ejecutar:

sudo docker start kali