# 🧪 Proyecto de Automatización de Pruebas de API - Módulo 4 (Diplomado) - Grupo 5

Este repositorio contiene un conjunto de pruebas automatizadas para la API REST del sistema FakeRestAPI sobre la gestion de actividad, autores, libros, portadas y usuarios. El objetivo principal es practicar y aplicar pruebas funcionales de API utilizando el enfoque BDD (Behavior Driven Development) en español (Desarrollo guiado por comportamiento) con Karate.

## 🚀 Descripción del Proyecto

Este proyecto fue desarrollado como parte del Módulo 4 del diplomado de Testing Funcional v1. El propósito es automatizar pruebas sobre los endpoints de la API `FakeRESTApi.Web V1` con URL: `https://fakerestapi.azurewebsites.net/index.html`, validando funcionalidades como:

- Crear un recurso (POST)
- Consultar un recurso (GET)
- Consultar un recurso filtrado (GET)
- Actualizar un recurso (PUT)
- Eliminar un recurso (DELETE)

Las pruebas cubren escenarios positivos, negativos y validaciones de reglas de negocio.

## 🛠️ Stack Tecnológico

El proyecto está desarrollado utilizando las siguientes tecnologías:

- [Java 11] - Lenguaje de programación base del proyecto. 
- [Karate DSL] (v1.4.0) - Framework de pruebas para APIs basado en BDD.
- [JUnit 5] - Motor de ejecución de pruebas utilizado junto con Karate.
- [Maven] - Herramienta de gestión de proyectos y dependencias.
- [Maven Surefire Plugin] (v2.22.2) - Plugin de Maven para ejecutar las pruebas.
- [Maven Compiler Plugin] (v3.8.1) - Para compilar el código Java.
- [Cucumber Reporting] (v5.7.2) - Para la generación de reportes HTML de pruebas.
- IDE: Visual Studio Code

## ✅ Requisitos Previos

Antes de ejecutar las pruebas, asegúrate de tener instalado lo siguiente:

- Java 11
- Maven
- Git
- Visual Studio Code (opcional pero recomendado)
## 📥 Clonar el Repositorio

```bash
git clone https://github.com/llanosmjla/Proyecto_Modulo_4__G5.git
cd Proyecto_Modulo_4__G5
```
## ▶️ Ejecutar las Pruebas
### ✅ Opción 1: Desde la Terminal 
Puedes correr todas las pruebas usando el siguiente comando:
```bash
mvn test
```
Si deseas ejecutar solo una carpeta o archivo en particular:
```bash
mvn test -Dtest=NombreDelTest
```
### ✅ Opción 2: Ejecutar pruebas con el plugin "Karate Runner" en Visual Studio Code

Otra forma práctica de ejecutar las pruebas es usando el plugin oficial de **Karate Runner** en VSCode. Esto permite correr las pruebas de forma visual sin necesidad de línea de comandos.

#### 🔧 Pasos para usarlo:

1. Abre **Visual Studio Code**.
2. Instala el plugin **Karate Runner** desde el *Marketplace*.
3. Luego verás un ícono 🥋 (Karate Runner) en la barra lateral izquierda. Haz clic allí.
4. Se mostrarán todos los archivos `.feature` del proyecto.

#### ▶️ Puedes ejecutar las pruebas de las siguientes maneras:

- Ejecutar todo el archivo `.feature`.
- Ejecutar un solo **escenario** dentro del archivo.
- Ejecutar **todos los tests del proyecto**.

> ⚠️ Asegúrate de seleccionar el runner adecuado (por ejemplo, `APITest.java`) cuando se solicite.

📄 El resultado se mostrará en la **consola de Karate** y también se generará un reporte en:
- **Reporte HTML en formato Cucumber**:  
Ve al directorio del proyecto, entra a la carpeta: `target/cucumber-html-reports` y ahí encontrarás un archivo `.html` llamado **report-feature.html** (o similar).  
Ábrelo con tu navegador para ver el informe visual de las pruebas.
