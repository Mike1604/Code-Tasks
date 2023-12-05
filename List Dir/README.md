<h1 align="center" id="title">List Dir</h1>

<p id="description">Este programa consiste en crear un programa al que es posible ingresar la direccion de una carpeta y que este genere un JSON con los nombres de todos los archivos y su tamaño en bytes</p>

<h2>🤔 Como funciona</h1>
<p>Este programa se encarga de revisar todos los archivos existentes en el path proporcionado. Utiliza la biblioteca filesystem para navegar entre los archivos y la biblioteca fstream para corroborar el archivo JSON.</p>
</br>
<p>Lo primero que se hace es obtener la dirección del directorio a través de los argumentos del ejecutable. Posteriormente, se realizan algunas pequeñas validaciones para verificar su corrección, asegurarse de que se haya recibido la dirección y confirmar la existencia del directorio</p>

![App Screenshot](https://github.com/Mike1604/Code-Tasks/blob/main/Find%20Roots/Img%20Readme/Functions.png?raw=true)

 <p>Una vez confirmada la existencia del directorio, se emplea la librería fstream para crear o abrir el archivo JSON en el que se ingresarán todos los datos. Posteriormente, se utiliza la librería filesystem para iterar sobre los archivos dentro del directorio y obtener su nombre y tamaño. Es crucial destacar la importancia de darle el formato adecuado al archivo para que funcione correctamente como un JSON.</p>

![App Screenshot](https://github.com/Mike1604/Code-Tasks/blob/main/Find%20Roots/Img%20Readme/Functions.png?raw=true)

<h2>💻 Built with</h2>

Technologies used in the project:

*   c++
<h2>⚙️ How to run it</h2>

El programa fue compilado utilizando CMake por lo que en la carpeta Build sera posible encontrar todas las dependencias y el .exe que permitira que este pueda ejecutarse de manera:
listdir.exe c:/archivos
Una vez ejecutado nos generara un .JSON con toda la informacion.