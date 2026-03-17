---
id: 695cc8f280fef0cc3bed02cb
title: Cos’è il modulo process e come funziona?
challengeType: 19
dashedName: what-is-the-process-module-and-how-does-it-work
---

# --description--

`process` è uno dei moduli core più importanti di Node.js. Ti permette di consultare informazioni sul processo Node.js corrente e di controllarlo mentre la tua app è in esecuzione.

Quando esegui un comando come `node script.js` nel terminale, Node.js avvia un processo, che è un’istanza in esecuzione del programma Node che esegue il file `script.js`. Questo processo ha una sua memoria, ambiente e contesto di esecuzione.

Il processo corrente è esposto globalmente tramite il modulo `process`, quindi non devi nemmeno importarlo. Finché hai Node.js installato, puoi chiamarlo ovunque.

Il modulo `process` espone proprietà e metodi per ottenere alcune informazioni sul contesto di esecuzione corrente.

`process.env` ti fornisce informazioni sull’ambiente corrente in cui Node è in esecuzione. Questo restituisce sempre un oggetto enorme con molti parametri, quindi ecco come puoi consultare direttamente alcune delle informazioni più importanti:

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

`process.argv` ti permette di leggere gli argomenti della riga di comando:

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

Il metodo `cwd()` mostra la directory di lavoro corrente:

```js
console.log(process.cwd());
```

Gli eventi del processo sono una funzionalità fondamentale di Node.js che permettono alla tua app di rispondere a momenti chiave del suo ciclo di vita, come quando sta per terminare, incontra un errore o riceve un segnale di sistema.

L’evento `exit`, per esempio, viene eseguito proprio prima che il processo Node.js finisca:

```js
process.on("exit", (code) => {
  console.log(`Process exiting with code: ${code}`);
});

// Process exiting with code: 0
```

L’evento `uncaughtException` si attiva quando un errore non viene catturato nel tuo codice, il che può aiutarti a prevenire crash:

```js
process.on("uncaughtException", (err) => {
  console.error("Uncaught error:", err.message);
});
```

Infine, l’evento `warning` si attiva quando Node.js emette un avviso di processo:

```js
process.on("warning", (warning) => {
  console.warn("Warning name:", warning.name);
  console.warn("Warning message:", warning.message);
});
```

Puoi poi usare il metodo `emitWarning()` per generare un avviso personalizzato:

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

Che cosa fa il metodo `process.emitWarning()`?

## --answers--

Interrompe il processo quando si verifica un avviso personalizzato.

### --feedback--

Pensa a come Node.js gestisce gli avvisi personalizzati tramite eventi.

---

Genera un evento di avviso personalizzato che può essere gestito dal listener degli avvisi.

---

Registra un errore e termina immediatamente il processo.

### --feedback--

Pensa a come Node.js gestisce gli avvisi personalizzati tramite eventi.

---

Riavvia il processo Node.js dopo aver mostrato un avviso.

### --feedback--

Pensa a come Node.js gestisce gli avvisi personalizzati tramite eventi.

## --video-solution--

2

## --text--

Come si usa il modulo process?

## --answers--

Chiamandolo direttamente dato che è un oggetto globale.

---

Abilitandolo nel file di configurazione di Node.js.

### --feedback--

Pensa al motivo per cui puoi consultare process ovunque senza configurazione.

---

Installandolo manualmente con npm prima di chiamarlo.

### --feedback--

Pensa al motivo per cui puoi consultare process ovunque senza configurazione.

---

Importandolo con require('process') prima di ogni uso.

### --feedback--

Pensa al motivo per cui puoi consultare process ovunque senza configurazione.

## --video-solution--

1

## --text--

A cosa servono gli eventi di processo?

## --answers--

Per definire variabili d’ambiente per l’applicazione.

### --feedback--

Pensa a come Node.js reagisce ai cambiamenti del ciclo di vita durante l’esecuzione.

---

Per creare nuovi processi per l’esecuzione parallela.

### --feedback--

Pensa a come Node.js reagisce ai cambiamenti del ciclo di vita durante l’esecuzione.

---

Per ascoltare e rispondere a momenti importanti del ciclo di vita come l’uscita, gli errori o i segnali di sistema.

---

Per gestire percorsi e estensioni di file nel sistema.

### --feedback--

Pensa a come Node.js reagisce ai cambiamenti del ciclo di vita durante l’esecuzione.

## --video-solution--

3
