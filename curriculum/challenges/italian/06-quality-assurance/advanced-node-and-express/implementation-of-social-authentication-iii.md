---
id: 589a8eb3f9fc0f352b528e72
title: Implementazione dell'autenticazione con i social III
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

`findOneAndUpdate` ti permette di cercare un oggetto e aggiornarlo. Se l'oggetto non esiste, verrà inserito e reso disponibile alla funzione di callback. In questo esempio, abbiamo sempre impostato `last_login`, incrementato il `login_count` di `1`, e popolato la maggior parte dei campi solo quando viene inserito un nuovo oggetto (nuovo utente). Nota l'uso dei valori predefiniti. A volte un profilo restituito non avrà tutte le informazioni compilate o l'utente lo manterrà privato. Dovrai gestire questo caso per evitare un errore.

Ora dovresti essere in grado di accedere alla tua app. Provala!

Invia la tua pagina quando pensi di averlo fatto correttamente. Se incontri degli errori, puoi vedere <a href="https://forum.freecodecamp.org/t/advanced-node-and-express/567135#implementation-of-social-authentication-iii-5" target="_blank" rel="noopener noreferrer nofollow">il progetto completato fino a questo punto</a>.

# --hints--

La configurazione della strategia GitHub dovrebbe essere completa.

```js
async () => {
  const url = new URL("/_api/auth.js", code);
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

