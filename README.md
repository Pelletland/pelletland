# Pelletland

## Trabajo Final ​ Técnicas y Herramientas 2018

### Maestría en Ingeniería de Software - Facultad de Informática - UNLP

Pelletland es un proyecto desarrollado utilizando [Pharo Smalltalk](https://pharo.org/), compatible con las versiones 7 y 8.

El mismo consiste en un sistema de acopio en el cual es de interés resolver el problema de seguimiento de los mismos. La empresa en cuestión, acopia "pellets" para crear diferentes líneas de producto de alimentación para animales.

Se puede encontrar una descripción más detallada del dominio en estas dos presentaciones y un enunciado con los requerimientos.

* [Presentación del Dominio - I](docs/Presentacion_I.pdf)
* [Presentación del Dominio - II](docs/Presentacion_II.pdf)
* [Descripción del Dominio](docs/Enunciado.pdf)

---

## Getting Started

* Pelletland fue probado en Pharo 7 y 8.
* Se recomienda utilizar [Iceberg](https://github.com/pharo-vcs/iceberg) para descargarlo e incorporarlo en la imágen Pharo.

> Si desconoce Iceberg, ver [Tutorial de Iceberg en 5 minutos](https://github.com/pharo-vcs/iceberg/wiki/Tutorial)

1. En Pharo, abrir el menú contextual, y navegar a `Toools > Iceberg`

> También se puede usar el atajo de teclado: Ctrl+O+I

2. Click en `Add`, seleccionar `Clone from github.com` y completar de la siguiente forma:
   * **Owner name**: `pelletland`
   * **Project name**: `pelletland`
   * **Protocol**: `https`

![Paso 2](docs/install_step_2.jpg?raw=true)

3. En los repositorios de Iceberg, ahora deberíamos ver el correspondiente a Pelletland:

![Paso 3](docs/install_step_3.png?raw=true)

4. Hacer doble-click en Pelletland y veremos los paquetes que contiene el repositorio. En este caso son dos:
   * `Pelletland`: Es el modelo, en él están todas las clases que resuelven el problema
   * `Pelletland-Tests`: Contiene los tests de unidad e integración correspondientes
   * Notar que se ven "grisaceos" porque no están "cargados" en el ambiente

![Paso 4](docs/install_step_4.png?raw=true)

5. Cargar los paquetes haciendo click derecho y seleccionando la opción `Load`
6. Para explorar el código, hacer click derecho sobre el paquete y seleccionar la opción `Browse`
7. Verificar que los tests funcionen:

![Paso 7](docs/install_step_7.png?raw=true)

---

[Informe](docs/Informe.pdf)

### Diagrama de clases

![Diagrama de Clases](docs/Pelletland_class_diagram.jpg?raw=true)
