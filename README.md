# Taller 3 Arquitectura de sistemas (Backend)

Proyecto creado a partir del repositorio propuesto  https://github.com/Dizkm8/Taller3Backend.

## Características

- Operaciones basicas CRUD 
- Despliegue automatizado usando Docker y GitHub Actions.
  
## Tecnologías 

- **Node.js**: Plataforma que permite ejecutar JavaScript en el servidor.  
- **Express**: Herramienta para crear y gestionar APIs de forma sencilla y rápida.  
- **MySQL Workbench**: Sistema de gestión de bases de datos que organiza y almacena información de manera estructurada.  
- **Docker**: Tecnología que facilita la creación y ejecución de aplicaciones en contenedores portátiles.  
- **Render**: Plataforma para alojar y desplegar aplicaciones y bases de datos en la nube.  
- **GitHub Actions**: Sistema para automatizar procesos como pruebas, construcción y despliegue de código.  


## Requerimientos
Tener certeza de contar con todo lo siguiente para poder ejecutar el proyecto de forma exitosa

- Node.js
- Docker
- MySQL
- MySQL Workbench
- Git

## Instalación

1. **Clonar el repositorio**:

    ```bash
    git clone https://github.com/teitonOrange/taller3--backend.git
    ```

2. **Instalar las dependencias**:

    ```bash
    
    npm install
    ```

3. **Configura las variables de entorno** en un archivo `.env`:

    ```env
    DB_HOST=your-database-host
    DB_USER=your-database-user
    DB_PASSWORD=your-database-password
    DB_NAME=your-database-name
    ```

4. **Inicia el servidor localmente**:

    ```bash
    npm start
    ```

## Uso con Docker

1. **Construye la imagen de Docker**:

    ```bash
    docker build -t teiton(IMPORTANTE-> DEBES COLOCAR TU USER DE DOCKER)/taller3-backend .
    ```

2. **Ejecuta el contenedor**:

    ```bash
    docker run --name TALLERB -p 5000:8080 teiton(IMPORTANTE-> DEBES COLOCAR TU USER DE DOCKER)/taller3-backend
    ```

## Flujo de CI/CD con GitHub Actions

Dentro del directorio se encuentra el archivo `build-push-docker.yaml` en la carpeta raiz `.github/workflows` el cual se preocupa de ejecutar los siguientes pasos:

 - Definir el flujo de trabajo
 	- Definir el desencadenador
 	- Definir los Jobs
 - Clonar repositorio
 - Iniciar sesion en docker hub
 - Construir la imagen de docker
 - Subir la imagen a docker hub
 - Notificar a Render sobre el despliegue

   
