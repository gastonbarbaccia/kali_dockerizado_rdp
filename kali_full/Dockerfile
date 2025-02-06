FROM kalilinux/kali-rolling

# Configurar el entorno para instalaciones no interactivas
ENV DEBIAN_FRONTEND=noninteractive

# Actualizar e instalar dependencias
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y xfce4 xfce4-goodies xrdp dbus-x11 sudo kali-desktop-xfce && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*


# Crear el usuario "kali" y darle privilegios de sudo
RUN adduser --disabled-password --gecos "" kali && \
    echo 'kali:kali' | chpasswd && \
    usermod -aG sudo kali


# Herramientas generales de kali
RUN apt-get update && apt-get upgrade -y && \
    apt-get install kali-linux-headless -y

# Configurar XRDP
RUN echo "startxfce4" > /etc/skel/.xsession && \
    mkdir -p /var/run/dbus

# Exponer el puerto para RDP
EXPOSE 3389

# Iniciar XRDP y mantener el contenedor activo
CMD service dbus start && service xrdp start && tail -f /dev/null
