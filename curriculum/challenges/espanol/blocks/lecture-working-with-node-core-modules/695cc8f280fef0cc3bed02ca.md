---
id: 695cc8f280fef0cc3bed02ca
title: ¿Qué es el módulo Path y cómo funciona?
challengeType: 19
dashedName: what-is-the-path-module-and-how-does-it-work
---

# --description--

El módulo `path` de Node.js te permite trabajar con archivos y rutas de directorios. Proporciona varios métodos útiles para manejar y transformar directorios, incluyendo unir, normalizar y resolver los directorios en diferentes plataformas y sistemas operativos.

Para usar el módulo `path`, puedes importarlo así:

```js
const path = require("path");
```

Veamos algunos de los métodos que proporciona el módulo `path` y cómo funcionan.

Primero, debes estar al tanto de las variables globales de Node.js `__filename` y `__dirname`, también conocidas como variables "common JS". No necesitas el módulo `path` para acceder a ellas, por eso se llaman variables globales.

`__filename` es la ruta absoluta del archivo actual y `__dirname` es la ruta absoluta del directorio que contiene el archivo actual.

Por ejemplo, tengo un archivo `script.js` en el que estoy trabajando actualmente. Esto es lo que devuelven los dos métodos:

```js
console.log(__filename);
// /Users/user/Desktop/fCC/script-code/node/node-path/script.js

console.log(__dirname);
// /Users/user/Desktop/fCC/script-code/node/node-path
```

También debes estar al tanto de las rutas relativas y absolutas.

Una ruta relativa apunta a un archivo o carpeta basado en tu directorio de trabajo actual. Por ejemplo, `./assets/src/text-files`.

Una ruta absoluta, por otro lado, da la dirección completa de un archivo o carpeta desde la raíz de tu sistema, como `/Users/johndoe/projects/app/assets/src/text-files.`

El método `basename()` muestra la última parte del archivo, es decir, el nombre del archivo:

```js
console.log(path.basename(__filename)); // script.js
```

`dirname()` devuelve el nombre del directorio de una ruta:

```js
console.log(path.dirname(__dirname)); // node-path
```

`extname()` devuelve la extensión del archivo actual:

```js
console.log(path.extname(__filename)); // .js
```

También puedes especificar un archivo diferente para devolver la extensión de:

```js
console.log(path.extname('text-files/text1.txt')); // .txt
```

El método `join()` toma todos los segmentos de ruta que pases y los une en una ruta limpia y normalizada. 

Esto podría ser útil si quieres combinar archivos relacionados en diferentes carpetas para que puedas trabajar con ellos juntos:

```js
const joinedPath = path.join("src", "assets", "text-files");
console.log(joinedPath); // src/assets/text-files
```

Windows usa barras invertidas para separar directorios, así que el resultado será `src\assets\text-files`.

Además, el método `join()` corrige automáticamente las barras incorrectas y elimina las adicionales:

```js
const wrongPath = path.join("/src//", "assets", "text-files");
console.log(wrongPath); // /src/assets/text-files
```

El método `resolve()` convierte una secuencia de segmentos de ruta en una ruta absoluta. Comienza desde tu directorio de trabajo actual y resulta en una ruta completa que apunta a la ubicación exacta en el dispositivo:

```js
const absolutePath = path.resolve("assets", "src", "text-files");
console.log(absolutePath);
// /Users/user/Desktop/fCC/script-code/node/node-path/assets/src/text-files
```

La diferencia entre `join()` y `resolve()` es que `join()` crea una ruta relativa, mientras que `resolve()` devuelve una ruta absoluta.

Por último, están los métodos `parse()` y `format()`.

`parse()` toma un directorio o archivo y devuelve un objeto que contiene el desglose de sus partes, como la raíz del sistema, su directorio, extensión y el nombre del archivo:

```js
const parsedFile = path.parse(__filename);

console.log(parsedFile);
/*
{
 root: '/',
 dir: '/Users/user/Desktop/fCC/script-code/node/node-path',
 base: 'script.js',
 ext: '.js',
 name: 'script'
}
*/
```

`format()`, por otro lado, construye una ruta a partir de un objeto que contiene directorio, nombre y extensión:

```js
const formattedDirectory = path.format({
  dir: "/users/johndoe/docs",
  name: "file",
  ext: ".txt",
});

console.log(formattedDirectory); // /users/johndoe/docs/file.txt
```

# --questions--

## --text--

¿Cuál es la diferencia entre `path.dirname()` y `path.extname()` en Node.js?

## --answers--

`dirname()` elimina la extensión del archivo, mientras que `extname()` elimina el nombre del directorio.

### --feedback--

Concéntrate en cuál se encarga de directorios y cuál se encarga de extensiones de archivo.

---

`dirname()` devuelve la ruta completa del archivo, mientras que `extname()` devuelve el nombre del directorio.

### --feedback--

Concéntrate en cuál se encarga de directorios y cuál se encarga de extensiones de archivo.

---

`dirname()` devuelve el nombre del directorio de una ruta, mientras que `extname()` devuelve la extensión del archivo.

---

`dirname()` y `extname()` ambos devuelven el mismo valor pero en diferentes formatos.

### --feedback--

Concéntrate en cuál se encarga de directorios y cuál se encarga de extensiones de archivo.

## --video-solution--

3

## --text--

¿Qué método de `path` construye una ruta de archivo completa a partir de un objeto que contiene las propiedades de directorio, nombre y extensión?

## --answers--

`path.parse()`

### --feedback--

Piensa en cuál es el opuesto de `parse()`.

---

`path.format()`

---

`path.resolve()`

### --feedback--

Piensa en cuál es el opuesto de `parse()`.

---

`path.join()`

### --feedback--

Piensa en cuál es el opuesto de `parse()`.

## --video-solution--

2

## --text--

¿A qué proporcionan acceso las variables globales de Node.js `__filename` y `__dirname`?

## --answers--

La ruta absoluta del archivo actual y su directorio contenedor.

---

El nombre del módulo actual y sus dependencias.

### --feedback--

Piensa en qué variables te dan automáticamente rutas completas de archivos y carpetas sin usar el módulo path.

---

La ruta relativa al directorio de instalación de Node.js.

### --feedback--

Piensa en qué variables te dan automáticamente rutas completas de archivos y carpetas sin usar el módulo path.

---

La URL del servidor web en ejecución y su nombre de host.

### --feedback--

Piensa en qué variables te dan automáticamente rutas completas de archivos y carpetas sin usar el módulo path.

## --video-solution--

1
