---
id: 67d301cc87b84eaa42bdcdbe
title: ¿Qué es un archivo tsconfig y por qué es importante incluirlo en los proyectos TypeScript?
challengeType: 19
dashedName: what-is-a-tsconfig-file-and-why-is-it-important-to-include-in-your-typescript-projects
---

# --description--

La configuración del compilador de TypeScript puede ajustarse para satisfacer las necesidades de tu proyecto. Esa configuración se encuentra en un archivo `tsconfig.json` en el directorio raíz del proyecto. De hecho, sin él, el compilador no se ejecutará a menos que le pases las banderas de comando directamente. Pero, ¿qué hace exactamente este archivo? Bueno, echemos un vistazo a un archivo de ejemplo:

```json
{
  "compilerOptions": {
    "rootDir": "./src",
    "outDir": "./prod",
    "lib": ["ES2023"],
    "target": "ES2023",
    "module": "ES2022",
    "moduleResolution": "Node",
    "esModuleInterop": true,
    "skipLibCheck": true,
    "strict": true
  },
  "exclude": ["test/"]
}
```

¡Esto parece mucho! Así que vamos a descomponerlo. La propiedad `compilerOptions` va a contener la "esencia" de tu configuración - aquí es donde controlas cómo se comporta el compilador TypeScript. Mirando ese objeto anidado…

El `rootDir` y `outDir` indican a TypeScript qué directorio contiene tus archivos fuente, y cuál debería contener el código JavaScript transpilado.

La propiedad `lib` determina qué definiciones de tipo utiliza el compilador y permite incluir soporte para lanzamientos específicos de ES, el DOM, y más.

`module` y `moduleResolution` funcionan en conjunto para gestionar cómo tu paquete utiliza módulos - ya sea CommonJS o ECMAScript.

`esModuleInterop` permite una interoperabilidad más fluida entre módulos CommonJS y ES al crear automáticamente objetos de espacio de nombres para las importaciones, facilitando el uso de módulos de diferentes sistemas juntos en tus proyectos TypeScript, y la opción `skipLibCheck` omite la validación de archivos `.d.ts` que no están referenciados por importaciones en tu código.

Y finalmente llegamos al modo `strict`. Algunos podrían argumentar que TypeScript no es realmente útil sin esta bandera activada, ya que activa bastantes otras verificaciones, como requerirte manejar adecuadamente tipos anulables, o advertir cuando TypeScript no puede inferir un tipo y recurre a cualquier tipo.

Antes de terminar, una nota rápida sobre la propiedad `exclude` a nivel superior: cuando has definido un directorio de origen, puedes tener código TypeScript fuera de ese directorio que no deseas compilado como parte de tu código de producción. Por ejemplo, tu código de prueba. El arreglo `exclude` indica al compilador que ignore estos archivos TypeScript durante la compilación, pero aún permite a herramientas como Intellisense exponer posibles problemas.

¡Hay un montón de otras opciones de compilador que puedes explorar, más de 50! Te animo a explorar la documentación y experimentar para encontrar la configuración que funcione para las necesidades de tu proyecto.

# --questions--

## --text--

¿Cuál propiedad en el archivo `tsconfig.json` afecta cómo se comporta el compilador?

## --answers--

`rootDir`

### --feedback--

Esta propiedad es un objeto que contiene opciones para el compilador.

---

`compilerOptions`

---

`exclude`

### --feedback--

Esta propiedad es un objeto que contiene opciones para el compilador.

---

`lib`

### --feedback--

Esta propiedad es un objeto que contiene opciones para el compilador.

## --video-solution--

2

## --text--

¿Qué hace la opción `strict` en el archivo `tsconfig.json`?

## --answers--

Solo verifica tipos anulables.

### --feedback--

Esta opción habilita varias verificaciones, incluyendo manejo de tipos anulables.

---

Obliga el uso de módulos CommonJS.

### --feedback--

Esta opción habilita varias verificaciones, incluyendo manejo de tipos anulables.

---

Alterna varias opciones de verificación de tipos.

---

Excluye archivos de prueba de la compilación.

### --feedback--

Esta opción habilita varias verificaciones, incluyendo manejo de tipos anulables.

## --video-solution--

3

## --text--

¿Cuál es el propósito del arreglo `exclude` en el archivo `tsconfig.json`?

## --answers--

Para especificar qué archivos compilar.

### --feedback--

Puedes usar esto para excluir código de prueba de la compilación.

---

Para listar bibliotecas adicionales a incluir.

### --feedback--

Puedes usar esto para excluir código de prueba de la compilación.

---

Para ignorar ciertos archivos durante la compilación.

---

Para definir directorios de salida para archivos compilados.

### --feedback--

Puedes usar esto para excluir código de prueba de la compilación.

## --video-solution--

3
