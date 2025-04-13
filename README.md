# Ravehalca: Sistema de Gestión para La Cochera Campestre

Este repositorio contiene el código fuente y el script de la base de datos del proyecto final **Ravehalca**, un sistema de gestión diseñado para el restaurante **La Cochera Campestre** de Chimbote. El desarrollo se realizó utilizando **JSF**, **JPA** y **PrimeFaces** en la capa de presentación, y fue desplegado sobre **Tomee**.

## Índice

- [Descripción](#descripción)
- [Objetivos del Proyecto](#objetivos-del-proyecto)
- [Requerimientos Especificados](#requerimientos-especificados)
- [Tecnologías Utilizadas](#tecnologías-utilizadas)
- [Arquitectura y Diseño](#arquitectura-y-diseño)
  - [Modelo de Datos y Diagramas UML](#modelo-de-datos-y-diagramas-uml)
- [Instalación y Ejecución](#instalación-y-ejecución)
  - [Requisitos Previos](#requisitos-previos)
  - [Despliegue en Tomee](#despliegue-en-tomee)
  - [Ejecutar el Script de la Base de Datos](#ejecutar-el-script-de-la-base-de-datos)
- [Documentación Adicional](#documentación-adicional)
- [Autores y Colaboradores](#autores-y-colaboradores)

## Descripción

**Ravehalca** es un sistema de gestión integral para **La Cochera Campestre**, un restaurante ubicado en Chimbote. La aplicación permite administrar diversas funcionalidades esenciales para el negocio, tales como:

- Gestión de clientes, empleados y proveedores.
- Registro y control de ingresos, pedidos, platillos, bebidas y servicios adicionales.
- Manejo de reservas, asignación de mesas y distribución de salones.
- Gestión de inventario y facturación.

El desarrollo se realizó siguiendo los requerimientos estipulados en la documentación final, que detalla los procesos y modelos necesarios para satisfacer las necesidades del restaurante.

## Objetivos del Proyecto

- **Analizar y definir** los procesos clave en el sector hostelero enfocados en la administración de restaurantes.
- **Desarrollar un prototipo funcional** que permita gestionar de forma integral las operaciones de La Cochera Campestre.
- **Optimizar y estandarizar** los procesos de atención al cliente, pedidos, inventario y facturación.
- **Implementar una solución robusta** utilizando tecnologías Java (JSF y JPA, con PrimeFaces para el front) y desplegarla en un entorno de producción con Tomee.

## Requerimientos Especificados

El proyecto se desarrolló conforme a los siguientes requerimientos funcionales y de negocio:

- **Gestión Integral de Operaciones:** Registro y administración de ingresos, pedidos, reservas y pagos.
- **Control de Inventario y Facturación:** Seguimiento del stock de insumos y generación de comprobantes.
- **Asignación de Roles y Accesos:** Gestión diferenciada de roles (administrador, gerente, mesero, cajero).
- **Optimización del Servicio:** Capacidad para modificar reservas y brindar atención personalizada, adaptada a las necesidades del restaurante.
- **Compatibilidad Multi-dispositivo:** Diseño responsive para acceder desde celulares, laptops y tablets.

Consulta la [Documentación Adicional](#documentación-adicional) para obtener una descripción completa de los diagramas UML, casos de uso y modelo de negocio.

## Tecnologías Utilizadas

- **JSF (JavaServer Faces):** Para la capa de presentación de la aplicación.
- **PrimeFaces:** Conjunto de componentes UI que potencia el desarrollo de la interfaz de usuario.
- **JPA (Java Persistence API):** Para la gestión de la persistencia de datos.
- **Tomee:** Servidor de aplicaciones utilizado para el despliegue del sistema.
- **Base de Datos Relacional:** Se implementó un script SQL para la creación y configuración de la base de datos.

## Arquitectura y Diseño

El sistema se estructura en módulos que abarcan diversas funcionalidades como la gestión de clientes, empleados, pedidos, inventario, y más. Se utilizaron diagramas UML para definir y estandarizar:

### Modelo de Datos y Diagramas UML

- **Diagrama Entidad-Relación (ER):** Define la estructura y relaciones de la base de datos.
- **Diagrama de Clases:** Muestra la arquitectura orientada a objetos de la aplicación.
- **Casos de Uso:** Especifican las interacciones entre los distintos actores (administrador, gerente, mesero, cajero) y el sistema.

## Instalación y Ejecución

### Requisitos Previos

- **Java Development Kit (JDK)**
- **Apache Tomee:** Configurado y en funcionamiento.
- **Base de Datos Relacional:** MySQL, PostgreSQL u otro sistema compatible.
- **IDE o Editor de Código:** Eclipse, IntelliJ IDEA o similar.

### Despliegue en Tomee

1. **Clona el repositorio:**

   ```bash
   git clone https://github.com/tu_usuario/ravehalca.git
   cd ravehalca
    
2. **Genera el archivo WAR**

Utiliza el build tool configurado (por ejemplo, Maven) para empaquetar el proyecto:

```bash
Copiar
Editar
mvn clean package
```
3. **Despliega en Tomee:**

Copia el archivo WAR generado en la carpeta webapps del servidor Tomee.

Inicia Tomee o, si ya se encuentra en ejecución, el sistema se desplegará automáticamente.

4. **Ejecutar el Script de la Base de Datos**
El script SQL se encuentra en la carpeta externo/ y permite crear y configurar todas las tablas y relaciones necesarias:

5. **Accede al servidor de base de datos:**

```bash
bash
Copiar
Editar
mysql -u tu_usuario -p
```
Ejecuta el script:
```bash
sql
Copiar
Editar
SOURCE /ruta/al/script/RAVEHALCA.sql;
```
Asegúrate de actualizar los parámetros de conexión (usuario, contraseña, nombre de la base de datos) según tu entorno.

### Documentación Adicional
Para obtener información completa sobre la arquitectura del sistema, diagramas UML, casos de uso y especificaciones de requerimientos, consulta el documento PDF final incluido en el repositorio: documentación final.pdf.

### Autores y Colaboradores
Callan López, Sarela Mabel

Hurtado Rivas, José Alberto

Ramos Alva, Elihel Adriano

Vega Peche, Arelly Fernanda

Universidad Tecnológica del Perú
Chimbote, 5 de junio del 2024
