---
id: 587d824a367417b2b2512c45
title: Tablero de mensajes anónimos
challengeType: 4
forumTopicId: 301568
dashedName: anonymous-message-board
---

# --description--

Construye una aplicación full stack de JavaScript que sea funcionalmente similar a esta: <a href="https://anonymous-message-board.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://anonymous-message-board.freecodecamp.rocks/</a>.

Trabajar en este proyecto implicará escribir tu código utilizando uno de los siguientes métodos:

-   Clone <a href="https://github.com/freeCodeCamp/boilerplate-project-messageboard/" target="_blank" rel="noopener noreferrer nofollow">this GitHub repo</a> and complete your project locally.
-   Use <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-project-messageboard/" target="_blank" rel="noopener noreferrer nofollow">our Gitpod starter project</a> to complete your project. Learn <a href="https://forum.freecodecamp.org/t/how-to-use-gitpod-in-the-curriculum/668669#how-can-i-share-my-workspace-to-get-help-8" target="_blank" rel="noopener noreferrer nofollow">how to share your Gitpod workspace to get help</a>.
-   Usa un constructor de sitios de tu elección para completar el proyecto. Asegúrate de incorporar todos los archivos de nuestro repositorio de GitHub.

# --instructions--

1.  Define `NODE_ENV` para probar sin comillas cuando esté listo para escribir pruebas y BD en la cadena de conexión de tus bases de datos (en `.env`)
2.  Se recomienda crear controladores/manejadores y manejar el enrutamiento en `routes/api.js`
3.  Añadirás cualquier característica de seguridad a `server.js`

Escribe las siguientes pruebas en `tests/2_functional-tests.js`:

-   Creando un nuevo hilo: POST petición a `/api/threads/{board}`
-   Viendo los 10 hilos más recientes con 3 respuestas cada una: Solicitud GET a `/api/threads/{board}`
-   Eliminando un hilo con la contraseña incorrecta: solicitud de DELETE a `/api/threads/{board}` con una `delete_password` inválida
-   Eliminando un hilo con la contraseña incorrecta: solicitud de DELETE a `/api/threads/{board}` con una `delete_password` inválida
-   Creando un nuevo hilo: solicitud de PUT a `/api/threads/{board}`
-   Creando una nueva respuesta: solicitud de POST a `/api/replies/{board}`
-   Viendo un hilo simple con todas las respuestas: Solicitud GET a `/api/replies/{board}`
-   Eliminando una respuesta con la contraseña incorrecta: solicitud de DELETE a `/api/replies/{board}` con un `delete_password` inválido
-   Eliminando una respuesta con la contraseña correcta: solicitud de DELETE a `/api/replies/{board}` con un `delete_password` válido
-   Creando una respuesta: solicitud de PUT a `/api/replies/{board}`

# --hints--

Puedes proveer tu propio proyecto, no la URL de ejemplo.

```js
  assert(
    !/.*\/anonymous-message-board\.freecodecamp\.rocks/.test(
      code
    )
  );
```

Solo permitele a tu sitio ser cargado dentro de un iFrame sobre tus propias páginas.

```js
async () => {
  const data = await fetch(code + '/_api/app-info');
  const parsed = await data.json();
  assert.isTrue(parsed.headers['x-frame-options']?.includes('SAMEORIGIN'));
};
```

No se permite DNS prefetching.

```js
async () => {
  const data = await fetch(code + '/_api/app-info');
  const parsed = await data.json();
  assert.isTrue(parsed.headers['x-dns-prefetch-control']?.includes('off'));
};
```

Solo permite a tu sitio enviar a lo concerniente para tus propias páginas.

```js
async () => {
  const data = await fetch(code + '/_api/app-info');
  const parsed = await data.json();
  assert.isTrue(parsed.headers['referrer-policy']?.includes('same-origin'));
};
```

Puedes enviar una petición POST a `/api/threads/{board}` con el formulario de datos incluyendo `text` and `delete_password`. The saved database record will have at least the fields `_id`, `text`, `created_on`(date & time), `bumped_on`(date & time, starts same as `created_on`), `reported` (boolean), `delete_password`, & `replies` (array).

```js
async () => {
  const date = new Date();
  const text = `fcc_test_${date}`;
  const deletePassword = 'delete_me';
  const data = { text, delete_password: deletePassword };
  const url = code;
  const res = await fetch(url + '/api/threads/fcc_test', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(data)
  });
  if (res.ok) {
    const checkData = await fetch(url + '/api/threads/fcc_test');
    const parsed = await checkData.json();
    try {
      assert.equal(parsed[0].text, text);
      assert.isNotNull(parsed[0]._id);
      assert.equal(new Date(parsed[0].created_on).toDateString(), date.toDateString());
      assert.equal(parsed[0].bumped_on, parsed[0].created_on);
      assert.isArray(parsed[0].replies);
    } catch (err) {
      throw new Error(err.responseText || err.message);
    }
  } else {
    throw new Error(`${res.status} ${res.statusText}`);
  }
};
```

Puedes enviar una petición POST a `/api/replies/{board}` con el fomulario de datos incluyendo:`text`, `delete_password`, & `thread_id`. Esto actualizará la fecha `bumped_on` en la fecha de comentarios. In the thread's `replies` array, an object will be saved with at least the properties `_id`, `text`, `created_on`, `delete_password`, & `reported`.

```js
async () => {
  const url = code;
  const body = await fetch(url + '/api/threads/fcc_test');
  const thread = await body.json();

  const date = new Date();
  const text = `fcc_test_reply_${date}`;
  const delete_password = 'delete_me';
  const thread_id = thread[0]._id;
  const replyCount = thread[0].replies.length;

  const data = { text, delete_password, thread_id };
  const res = await fetch(url + '/api/replies/fcc_test', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(data)
  });
  if (res.ok) {
    const checkData = await fetch(`${url}/api/replies/fcc_test?thread_id=${thread_id}`);
    const parsed = await checkData.json();
    try {
      assert.equal(parsed.replies.length, replyCount + 1);
      assert.equal(parsed.replies[0].text, text);
      assert.equal(parsed._id, thread_id);
      assert.equal(parsed.bumped_on, parsed.replies[0].created_on);
    } catch (err) {
      throw new Error(err.responseText || err.message);
    }
  } else {
    throw new Error(`${res.status} ${res.statusText}`);
  }
};
```

Puedes enviar una solicitud GET a `/api/threads/{board}`. Se devolverá un arreglo de los 10 hilos más recientes en el tablero con solo las 3 respuestas más recientes para cada uno. Los campos `reported` y `delete_password` no serán enviados al cliente.

```js
async () => {
  const url = code;
  const res = await fetch(url + '/api/threads/fcc_test');

  if (res.ok) {
    const threads = await res.json();
    try {
      assert.equal(res.status, 200);
      assert.isAtMost(threads.length, 10);
      for (let i = 0; i < threads.length; i++) {
        assert.containsAllKeys(threads[i], ["_id", "text", "created_on", "bumped_on", "replies"]);
        assert.isAtMost(threads[i].replies.length, 3);
        assert.notExists(threads[i].delete_password);
        assert.notExists(threads[i].reported);
        for (let j = 0; j < threads[i].replies.length; j++) {
          assert.notExists(threads[i].replies[j].delete_password);
          assert.notExists(threads[i].replies[j].reported);
        }
      }
    } catch (err) {
      throw new Error(err.responseText || err.message);
    }
  } else {
    throw new Error(`${res.status} ${res.statusText}`);
  }
};
```

Puedes enviar una solicitud GET a `/api/replies/{board}?thread_id={thread_id}`. Se devolverá el hilo completo con todas sus respuestas, también excluyendo los mismos campos del cliente que la prueba anterior.

```js
async () => {
  const url = code;
  let res = await fetch(url + '/api/threads/fcc_test');
  const threads = await res.json();
  const thread_id = threads[0]._id;
  res = await fetch(`${url}/api/replies/fcc_test?thread_id=${thread_id}`);

  if (res.ok) {
    const thread = await res.json();
    try {
      assert.equal(res.status, 200);
      assert.isObject(thread);
      assert.containsAllKeys(thread, ["_id", "text", "created_on", "bumped_on", "replies"]);
      assert.isArray(thread.replies);
      assert.notExists(thread.delete_password);
      assert.notExists(thread.reported);
      for (let i = 0; i < thread.replies.length; i++) {
        assert.notExists(thread.replies[i].delete_password);
        assert.notExists(thread.replies[i].reported);
      }
    } catch (err) {
      throw new Error(err.responseText || err.message);
    }
  } else {
    throw new Error(`${res.status} ${res.statusText}`);
  }
};
```

Puedes enviar una solicitud DELETE a `/api/threads/{board}` y pasar a lo largo del `thread_id` & `delete_password` para eliminar el hilo. Devuelta será la cadena `incorrect password` o `success`.

```js
async () => {
  const url = code;
  let res = await fetch(url + '/api/threads/fcc_test');
  const threads = await res.json();
  const thread_id = threads[0]._id;
  let data = { thread_id, delete_password: "wrong_password" };
  const res_invalid = await fetch(url + '/api/threads/fcc_test', {
    method: 'DELETE',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(data)
  });
  data = { thread_id, delete_password: "delete_me" };
  res = await fetch(url + '/api/threads/fcc_test', {
    method: 'DELETE',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(data)
  });

  if (res.ok) {
    const deleted = await res.text();
    const not_deleted = await res_invalid.text();
    try {
      assert.equal(res.status, 200);
      assert.equal(deleted, "success");
      assert.equal(not_deleted, "incorrect password");
    } catch (err) {
      throw new Error(err.responseText || err.message);
    }
  } else {
    throw new Error(`${res.status} ${res.statusText}`);
  }
};
```

Puedes enviar una solicitud DELETE a `/api/replies/{board}` y pasar a lo largo del `thread_id`, `reply_id`, & `delete_password`. Devuelto será la cadena `incorrect password` o `success`. En caso de éxito, el texto del `reply_id` se cambiará a `[deleted]`.

```js
async () => {
  const url = code;

  const thread_data = {
    text: "fcc_test_thread",
    delete_password: "delete_me",
  };
  await fetch(`${url}/api/threads/fcc_test`, {
    method: "POST",
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(thread_data)
  });
  let res = await fetch(`${url}/api/threads/fcc_test`);
  let threads = await res.json();
  const thread_id = threads[0]._id;

  const reply_data = { thread_id, text: "fcc_test_reply", delete_password: "delete_me" };
  await fetch(`${url}/api/replies/fcc_test`, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(reply_data)
  });
  res = await fetch(`${url}/api/threads/fcc_test`);
  threads = await res.json();
  const reply_id = threads[0].replies[0]._id;

  const data = { thread_id, reply_id, delete_password: "delete_me" };
  res = await fetch(url + '/api/replies/fcc_test', {
    method: 'DELETE',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(data)
  });

  if (res.ok) {
    const deleted = await res.text();
    try {
      assert.equal(res.status, 200);
      assert.equal(deleted, "success");
      res = await fetch(`${url}/api/replies/fcc_test?thread_id=${thread_id}`);
      const thread = await res.json();
      assert.equal(thread._id, thread_id);
      assert.equal(thread.replies[0]._id, reply_id);
      assert.equal(thread.replies[0].text, "[deleted]");
    } catch (err) {
      throw new Error(err.responseText || err.message);
    }
  } else {
    throw new Error(`${res.status} ${res.statusText}`);
  }
};
```

Puedes enviar una solicitud PUT a `/api/threads/{board}` y pasar a lo largo del `thread_id`. Devuelta será la cadena `reported`. The `reported` value of the `thread_id` will be changed to `true`.

```js
async () => {
  const url = code;

  let res = await fetch(`${url}/api/threads/fcc_test`);
  const threads = await res.json();
  const thread_id = threads[0]._id;
  const data = { thread_id };

  res = await fetch(`${url}/api/threads/fcc_test`, {
    method: 'PUT',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(data)
  });

  if (res.ok) {
    const reported = await res.text();
    try {
      assert.equal(res.status, 200);
      assert.equal(reported, "reported");
    } catch (err) {
      throw new Error(err.responseText || err.message);
    }
  } else {
    throw new Error(`${res.status} ${res.statusText}`);
  }
};
```

Puedes enviar una solicitud PUT a`/api/replies/{board}` y pasar a lo largo de `thread_id` & `reply_id`. Devuelta será la cadena `reported`. El valor `reported` del `reply_id` será cambiado a `true`.

```js
async () => {
  const url = code;

  let res = await fetch(`${url}/api/threads/fcc_test`);
  const threads = await res.json();
  const thread_id = threads[0]._id;
  const reply_id = threads[0].replies[0]._id;
  const data = { thread_id, reply_id };

  res = await fetch(`${url}/api/replies/fcc_test`, {
    method: 'PUT',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(data)
  });

  if (res.ok) {
    const reported = await res.text();
    try {
      assert.equal(res.status, 200);
      assert.equal(reported, "reported");
    } catch (err) {
      throw new Error(err.responseText || err.message);
    }
  } else {
    throw new Error(`${res.status} ${res.statusText}`);
  }
};
```

Las 10 pruebas funcionales están completas y pasan.

```js
async () => {
  const tests = await fetch(code + '/_api/get-tests');
  const parsed = await tests.json();
  assert.isTrue(parsed.length >= 10);
  parsed.forEach((test) => {
    assert.equal(test.state, 'passed');
    assert.isAtLeast(test.assertions.length, 1);
  });
};
```

