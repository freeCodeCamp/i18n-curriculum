---
id: 695cc8f280fef0cc3bed02cb
title: ¿Qué es el módulo Process y cómo funciona?
challengeType: 19
dashedName: what-is-the-process-module-and-how-does-it-work
---

# --description--

`process` es uno de los módulos centrales más importantes de Node.js. Te da acceso a información sobre el proceso actual de Node.js y te permite controlarlo mientras tu aplicación está en ejecución.

Cuando ejecutas un comando como `node script.js` en la terminal, Node.js inicia un proceso, que es una instancia en ejecución del programa Node que ejecuta el archivo `script.js`. Este proceso tiene su propia memoria, entorno y contexto de ejecución. 

El proceso actual está expuesto globalmente a través del módulo `process`, así que ni siquiera necesitas importarlo. Mientras tengas Node.js instalado, puedes llamarlo desde cualquier lugar.

El módulo `process` expone propiedades y métodos para que obtengas cierta información sobre el contexto de ejecución actual.

`process.env` te proporciona información sobre el entorno actual en el que se está ejecutando Node. Esto siempre devuelve un objeto gigante con muchos parámetros, así que aquí te mostramos cómo puedes acceder directamente a alguna de la información más importante:

```js
// Gets all environment variables available to the current Node.js process
console.log(process.env);

// Gets the current Node.js environment mode (like 'development' or 'production')
console.log(process.env.NODE_ENV); // development

// Gets the path of the shell program running the Node.js process
console.log(process.env.SHELL); // /bin/bash

// Gets the system PATH variable where executables are searched for
console.log(process.env.PATH); // /usr/local/bin:/usr/bin:/bin

// Gets the present working directory from where the process was started
console.log(process.env.PWD); // /Users/johndoe/projects/myapp

// Gets the username of the user running the current process
console.log(process.env.USER); // johndoe
```

`process.argv` te permite leer argumentos de la línea de comandos:

```js
console.log(process.argv);
/*
script.js --watch
Hello world
[
  '/Users/user/.nvm/versions/node/v22.17.0/bin/node',
  '/Users/user/Desktop/fCC/script-code/node/node-process/script.js',
  '--watch'
]
*/
```

El método `cwd()` muestra el directorio de trabajo actual:

```js
console.log(process.cwd());
```

Los eventos de proceso son una característica fundamental de Node.js que permiten que tu aplicación responda a momentos clave en su ciclo de vida, como cuando está a punto de salir, encuentra un error o recibe una señal del sistema.

El evento `exit`, por ejemplo, se ejecuta justo antes de que termine el proceso de Node.js:

```js
process.on("exit", (code) => {
  console.log(`Process exiting with code: ${code}`);
});

// Process exiting with code: 0
```

El evento `uncaughtException` se activa cuando un error no es capturado en tu código, lo que puede ayudarte a prevenir fallos:

```js
process.on("uncaughtException", (err) => {
  console.error("Uncaught error:", err.message);
});
```

Por último, el evento `warning` se activa cuando Node.js emite una advertencia del proceso:

```js
process.on("warning", (warning) => {
  console.warn("Warning name:", warning.name);
  console.warn("Warning message:", warning.message);
});
```

Luego puedes usar el método `emitWarning()` para activar una advertencia personalizada:

```js
// Example warning with the emitWarning() method
process.emitWarning('This is a custom warning message', 'CustomWarning');

/*
  Warning name: CustomWarning
  Warning message: This is a custom warning message
*/
```

# --questions--

## --text--

¿Qué hace el método `process.emitWarning()`?

## --answers--

Detiene el proceso cuando ocurre una advertencia personalizada.

### --feedback--

Piensa en cómo Node.js maneja las advertencias personalizadas a través de eventos.

---

Dispara un evento de advertencia personalizado que puede ser manejado por el listener de advertencias.

---

Registra un error y termina el proceso inmediatamente.

### --feedback--

Piensa en cómo Node.js maneja las advertencias personalizadas a través de eventos.

---

Reinicia el proceso de Node.js después de mostrar una advertencia.

### --feedback--

Piensa en cómo Node.js maneja las advertencias personalizadas a través de eventos.

## --video-solution--

2

## --text--

¿Cómo usas el módulo process?

## --answers--

Llamándolo directamente ya que es un objeto global.

---

Al habilitarlo en el archivo de configuración de Node.js.

### --feedback--

Piensa por qué puedes acceder a process en cualquier lugar sin configuración.

---

Instálalo manualmente usando npm antes de llamarlo.

### --feedback--

Piensa por qué puedes acceder a process en cualquier lugar sin configuración.

---

Importándolo usando require('process') antes de cada uso.

### --feedback--

Piensa por qué puedes acceder a `process` en cualquier lugar sin configuración.

## --video-solution--

1

## --text--

¿Para qué se usan los eventos de proceso?

## --answers--

Para definir variables de entorno para la aplicación.

### --feedback--

Piensa en cómo Node.js reacciona a los cambios del ciclo de vida durante la ejecución.

---

Para crear nuevos procesos para ejecución paralela.

### --feedback--

Piensa en cómo Node.js reacciona a los cambios del ciclo de vida durante la ejecución.

---

Escuchar y responder a momentos importantes del ciclo de vida como salida, errores o señales del sistema.

---

Para gestionar rutas de archivos y extensiones en el sistema.

### --feedback--

Piensa en cómo Node.js reacciona a los cambios del ciclo de vida durante la ejecución.

## --video-solution--

3
