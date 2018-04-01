# MiniMotor

Instalar primero las librerias necesarias:

sudo apt-get install cmake libx11-dev xorg-dev libglu1-mesa-dev freeglut3-dev libglew1.5 libglew1.5-dev libglu1-mesa libglu1-mesa-dev libgl1-mesa-glx libgl1-mesa-dev

sudo apt-get install freeglut3 freeglut3-dev

Instalar CMake:

Descargar de aca:
https://cmake.org/files/v3.11/cmake-3.11.0.tar.gz

despues descomprimir, ubicar la consola en esa carpeta y ejecutar:

sudo ./bootstrap

sudo make

sudo make install

para solucionar el error de falta GLFW/glfw3.h

sudo apt-get install libglfw-dev

Librerria GLAD para usar las ventanas en OpenGL:

Abrir este Web Service:

http://glad.dav1d.de/

Seleccionar C++, OpenGL y en la parte de API solo seleccionar la parte donde dice gl y seleccionar la ultima version (4.6)

En profile Seleccionar Core y al final de la pagina seleccionan la casilla de Generate a Loader y listo Dan en Generate y descargan el zip que les sale

