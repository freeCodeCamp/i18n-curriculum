---
id: 589a8eb3f9fc0f352b528e72
title: Implementación de la autentificación social III
challengeType: 2
forumTopicId: 301558
dashedName: implementation-of-social-authentication-iii
---

# --description--

The final part of the strategy is handling the profile returned from GitHub. We need to load the user's database object if it exists, or create one if it doesn't, and populate the fields from the profile, then return the user's object. GitHub supplies us a unique *id* within each profile which we can use to search with to serialize the user with (already implemented). Below is an example implementation you can use in your project--it goes within the function that is the second argument for the new strategy, right below where `console.log(profile);` currently is:

```js
myDataBase.findOneAndUpdate(
  { id: profile.id },
  {
    $setOnInsert: {
      id: profile.id,
      username: profile.username,
      name: profile.displayName || 'John Doe',
      photo: profile.photos[0].value || '',
      email: Array.isArray(profile.emails)
        ? profile.emails[0].value
        : 'No public email',
      created_on: new Date(),
      provider: profile.provider || ''
    },
    $set: {
      last_login: new Date()
    },
    $inc: {
      login_count: 1
    }
  },
  { upsert: true, new: true },
  (err, doc) => {
    return cb(null, doc.value);
  }
);
```

`findOneAndUpdate` te permite buscar un objeto y actualizarlo. Si el objeto no existe, será insertado y puesto a disposición de la función callback. En este ejemplo, siempre establecemos `last_login`, incrementamos el `login_count` por `1`, y sólo rellenamos la mayoría de los campos cuando se inserta un nuevo objeto (nuevo usuario). Ten en cuenta el uso de valores predeterminados. A veces un perfil devuelto no tendrá toda la información rellenada o el usuario la mantendrá privada. En este caso, lo gestionas para prevenir un error.

Debería poder iniciar sesión en su aplicación ahora. ¡Intentalo!

Envía tu página cuando creas que lo has hecho bien. Si te encuentras con errores, puedes<a href="https://forum.freecodecamp.org/t/advanced-node-and-express/567135#implementation-of-social-authentication-iii-5" target="_blank" rel="noopener noreferrer nofollow">consulta el proyecto realizado hasta este momento</a>.

# --hints--

La configuración de la estrategia de GitHub debe estar completa.

```js
async (getUserInput) => {
  const url = new URL("/_api/auth.js", getUserInput("url"));
  const res = await fetch(url);
  const data = await res.text();
  assert.match(
    data,
    /GitHubStrategy[^]*myDataBase/gi,
    'Strategy should use now use the database to search for the user'
  );
  assert.match(
    data,
    /GitHubStrategy[^]*cb/gi,
    'Strategy should return the callback function "cb"'
  );
}
```

