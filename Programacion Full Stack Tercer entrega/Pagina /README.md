Manual de Usuario

Este manual describe cómo instalar, configurar y utilizar el proyecto AnimalDraft - PlayCode, desarrollado en Laravel, que permite gestionar partidas, jugadores y rankings. Está pensado para usuarios y desarrolladores que necesiten probar o mantener el sistema.

Introducción

El proyecto consiste en una plataforma de juego donde los usuarios pueden registrarse, crear partidas, participar en ellas y consultar un ranking acumulado. La aplicación está diseñada para ejecutarse en un entorno local de desarrollo o en un servidor web que soporte Laravel.

Se han incluido credenciales de prueba para facilitar el acceso y la evaluación de las funcionalidades sin necesidad de crear usuarios reales.

Instalación y Configuración

Para comenzar, primero es necesario clonar el repositorio desde GitHub. Esto se hace mediante el comando git clone, seguido de la URL del repositorio. Una vez clonado, se debe ingresar a la carpeta del proyecto.

El siguiente paso es instalar las dependencias de PHP y Node.js. Para esto se utiliza Composer, con composer install, que descarga todas las librerías necesarias para Laravel, y npm install para las dependencias de JavaScript y CSS.

Luego, se debe configurar el archivo .env, que contiene los parámetros de conexión a la base de datos y otras variables de entorno. Es importante que la base de datos ya exista y que se hayan ejecutado las migraciones con php artisan migrate para crear las tablas necesarias.

Finalmente, para levantar el proyecto en un entorno de desarrollo se utiliza el comando npm run dev, que compila los assets (CSS, JS) y deja el proyecto listo para ejecutarse en localhost. También se puede iniciar el servidor de desarrollo de Laravel con php artisan serve para acceder a la aplicación desde un navegador web.

Uso de Git

Todas las modificaciones del proyecto se realizan utilizando Git. La rama principal (master) contiene la versión estable del sistema. Para trabajar en nuevas funcionalidades, se recomienda crear ramas adicionales y realizar commits frecuentes con mensajes claros en inglés. Esto facilita el seguimiento de cambios y la colaboración en equipo.

Al finalizar el desarrollo de una funcionalidad, se puede hacer un merge hacia la rama master asegurándose de que no haya conflictos y que todas las pruebas pasen correctamente.

Credenciales de Prueba

Para probar la aplicación sin necesidad de registrarse, se han creado usuarios de prueba. Por ejemplo, se puede iniciar sesión con los siguientes datos:

Usuario: admin, Contraseña: admin123

Usuario: jugador1, Contraseña: prueba2025

Estas cuentas permiten explorar todas las funcionalidades de la aplicación, incluyendo crear partidas, unirse a partidas existentes y consultar el ranking de jugadores.

Uso de la Aplicación

Una vez iniciada sesión, los usuarios pueden acceder a diferentes secciones según su rol. La pantalla de inicio muestra un resumen de la aplicación, incluyendo opciones de navegación y acceso rápido a partidas y rankings.

La sección de Jugar permite crear o unirse a partidas, registrando automáticamente la puntuación de cada jugador. Todos los jugadores pueden participar en partidas y consultar sus estadísticas personales desde el perfil, donde se muestran partidas jugadas y resultados individuales.

La sección de Ranking muestra los resultados acumulados de todos los jugadores, incluyendo puntos totales y promedio de puntuación, los cuales se actualizan automáticamente después de cada partida.

El Panel de Administración es accesible únicamente para el usuario con rol admin. Desde allí, el administrador puede gestionar partidas, supervisar jugadores y revisar estadísticas globales, garantizando que solo cuentas autorizadas puedan realizar cambios críticos en el sistema.
