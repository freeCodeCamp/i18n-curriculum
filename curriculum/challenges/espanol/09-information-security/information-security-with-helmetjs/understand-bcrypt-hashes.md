---
id: 58a25bcef9fc0f352b528e7c
title: Comprender la función hash BCrypt
challengeType: 2
forumTopicId: 301586
dashedName: understand-bcrypt-hashes
---

# --description--

Para los siguientes ejercicios, utilizarás un nuevo proyecto que es diferente al anterior. Puede encontrar el nuevo proyecto inicial en <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-bcrypt/" target="_blank" rel="noopener noreferrer nofollow">Gitpod</a>, o clonarlo desde <a href="https://github.com/freeCodeCamp/boilerplate-bcrypt/" target="_blank" rel="noopener noreferrer nofollow">GitHub</a>. Learn <a href="https://forum.freecodecamp.org/t/how-to-use-gitpod-in-the-curriculum/668669#how-can-i-share-my-workspace-to-get-help-8" target="_blank" rel="noopener noreferrer nofollow">how to share your Gitpod workspace to get help</a>.

Las hash de BCrypt son muy seguras. Un hash es básicamente una huella dactilar de los datos originales- siempre única. Esto se consigue al introducir los datos originales en un algoritmo y retornando un resultado de longitud fija. Para complicar aún más este proceso y hacerlo más seguro, puedes *añadir un salt* a tu hash. Añadir un salt al hash implica agregar datos aleatorios a los datos originales antes de realizar el proceso de hash, lo cual hace que sea aún más díficil de descifrar el hash.

Los hashes BCrypt siempre tendrán un aspecto similar a `$2a$13$ZyprE5MRw2Q3WpNOGZWGbeG7ADUre1Q8QO.uUUtcbqloU0yvzavOm`, el cual posee una estructura. El primer pequeño bit de datos `$2a` define que tipo de algoritmo de hash fue utilizado. La siguiente porción `$13` define el *cost*. El costo "cost" determina la cantidad de potencia necesaria para calcular el hash. Está en una escala logarítmica de 2^cost y determina cuántas veces los datos se someten al algoritmo de hash. Por ejemplo, con un costo de 10, puedes calcular el hash de 10 contraseñas por segundo en una computadora promedio. Sin embargo, con un coste de 15, lleva 3 segundos por hash... y para llevarlo aún más lejos, con un coste de 31, tomaría varios días completar un hash. Un costo de 12 es considerado muy seguro en la actualidad. La última porción del hash `$ZyprE5MRw2Q3WpNOGZWGbeG7ADUre1Q8QO.uUUtcbqloU0yvzavOm`, parece una única cadena de números, periodos y letras pero en realidad son dos piezas separadas de información. Los primeros 22 caracteres son el salt en texto plano, ¡y el resto corresponden a la contraseña cifrada!

# --instructions--

Añade todo tu código para estas lecciones en el archivo `server.js` entre las líneas de código con las que hemos iniciado. No edites ni borres el código que hemos añadido para ti.

BCrypt ha sido añadido como dependencia, así que inclúyelo como `bcrypt` en tu servidor.

Envía tu página cuando creas que está correcto.

# --hints--

BCrypt debe ser una dependencia.

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/_api/package.json').then(
    (data) => {
      var packJson = JSON.parse(data);
      assert.property(
        packJson.dependencies,
        'bcrypt',
        'Your project should list "bcrypt" as a dependency'
      );
    },
    (xhr) => {
      throw new Error(xhr.statusText);
    }
  );
```

BCrypt debe ser incluido apropiadamente.

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/_api/server.js').then(
    (data) => {
      assert.match(
        data,
        /bcrypt.*=.*require.*('|")bcrypt('|")/gi,
        'You should correctly require and instantiate socket.io as io.'
      );
    },
    (xhr) => {
      throw new Error(xhr.statusText);
    }
  );
```

