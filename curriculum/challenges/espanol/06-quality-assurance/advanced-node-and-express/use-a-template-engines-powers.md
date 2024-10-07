---
id: 5895f70bf9fc0f352b528e64
title: Usar poderes de un motor de plantillas
challengeType: 2
forumTopicId: 301567
dashedName: use-a-template-engines-powers
---

# --description--

One of the greatest features of using a template engine is being able to pass variables from the server to the template file before rendering it to HTML.

En tu archivo Pug, puedes usar variables referenciando el nombre de la misma como `#{variable_name}`, en la misma línea con otro texto en un elemento o utilizando un signo igual en el elemento sin un espacio como `p=variable_name`, lo cual asigna el valor de la variable al texto del elemento p.

Pug se trata de usar espacios en blanco y pestañas para mostrar elementos anidados y reducir la cantidad de código necesario para crear un sitio hermoso.

Tome el siguiente código Pug como ejemplo:

```pug
head
  script(type='text/javascript').
    if (foo) bar(1 + 5);
body
  if youAreUsingPug
      p You are amazing
    else
      p Get on it!
```

Lo anterior produce el siguiente HTML:

```html
<head>
  <script type="text/javascript">
    if (foo) bar(1 + 5);
  </script>
</head>
<body>
  <p>You are amazing</p>
</body>
```

Tu archivo `index.pug` incluido en tu proyecto, utiliza las variables `title` y `message`.

Pásalas desde el servidor al archivo Pug añadiendo un objeto como segundo argumento en la llamada a `res.render`, proporcionando las variables y sus valores. Dale al `title` un valor de `Hello` y a `message` un valor de `Please log in`.

Debería verse así:

```javascript
res.render('index', { title: 'Hello', message: 'Please log in' });
```

Ahora actualiza la página, y deberías ver esos valores renderizados en el lugar correcto, tal y como se indica en el archivo `index.pug`!

Envía tu página cuando creas que lo has hecho bien. Si te encuentras con errores, puedes revisar el <a href="https://forum.freecodecamp.org/t/advanced-node-and-express/567135#use-a-template-engines-power-2" target="_blank" rel="noopener noreferrer nofollow">proyecto completado hasta este punto</a>.

# --hints--

Pug debe procesar correctamente las variables.

```js
async (getUserInput) => {
  const url = new URL("/", getUserInput("url"));
  const res = await fetch(url);
  const data = await res.text();
  assert.match(
    data,
    /pug-variable("|')>Please log in/gi,
    'Your projects home page should now be rendered by pug with the projects .pug file unaltered'
  );
}
```

