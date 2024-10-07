---
id: 587d7dbf367417b2b2512bbc
title: Divide tus estilos en trozos más pequeños con parciales
challengeType: 0
forumTopicId: 301459
dashedName: split-your-styles-into-smaller-chunks-with-partials
---

# --description--

<dfn>Partials</dfn> in Sass are separate files that hold segments of CSS code. These are imported and used in other Sass files. This is a great way to group similar code into a module to keep it organized.

Los nombres de los parciales comienzan con el carácter de guión bajo (`_`), que le dice a Sass que es un pequeño segmento de CSS y no para convertirlo en un archivo CSS. También, los archivos Sass terminan con la extensión de archivo `.scss`. Para introducir el código en el parcial en otro archivo Sass, utiliza la directiva `@import`.

Por ejemplo, si todos tus mixins se guardan en un parcial llamado "\_mixins.scss", y son necesarios en el archivo "main.scss", es cómo usarlos en el archivo principal:

```scss
@import 'mixins'
```

Ten en cuenta que el guión bajo y la extensión del archivo no son necesarios en la declaración `import` - Sass entiende que es un parcial. Una vez que un parcial es importado en un archivo, todas las variables, mixins y otros códigos están disponibles para usar.

# --instructions--

Escribe una instrucción `@import` para importar un nombre parcial `_variables.scss` en el archivo main.scss.

# --hints--

Tu código debe usar la directiva `@import` y no debe incluir el guión bajo en el nombre del archivo.

```js
assert(code.match(/@import\s+?('|")variables\1/gi));
```

# --seed--

## --seed-contents--

```html
<!-- The main.scss file -->
```

# --solutions--

```html
@import 'variables'
```
