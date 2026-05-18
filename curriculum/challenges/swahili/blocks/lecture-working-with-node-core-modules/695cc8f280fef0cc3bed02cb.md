---
id: 695cc8f280fef0cc3bed02cb
title: Moduli ya mchakato ni nini na inafanya kazi vipi?
challengeType: 19
dashedName: what-is-the-process-module-and-how-does-it-work
---

# --description--

`process` ni mojawapo ya moduli kuu muhimu zaidi za Node.js. Inakupa upatikanaji wa taarifa kuhusu mchakato wa sasa wa Node.js, na inakuwezesha kuudhibiti wakati programu yako inaendelea kutekelezwa.

Unapotekeleza amri kama `node script.js` kwenye terminal, Node.js huanzisha mchakato, ambao ni mfano unaoendelea wa programu ya Node inayotekeleza faili la `script.js`. Mchakato huu una kumbukumbu yake, mazingira yake, na muktadha wa utekelezaji.

Mchakato wa sasa unawekwa wazi kimataifa kupitia moduli ya `process`, kwa hivyo hata huitaji kuimporti. Kadri tu unavyokuwa na Node.js imewekwa, basi unaweza kuitumia popote.

Moduli ya `process` inaweka wazi vigezo na njia ili upate taarifa fulani kuhusu muktadha wa sasa wa utekelezaji.

`process.env` inakupa taarifa kuhusu mazingira ya sasa ambayo Node inaendesha. Hii daima hurudisha kitu kikubwa chenye vigezo vingi, kwa hivyo hivi ndivyo unavyoweza kupata baadhi ya taarifa muhimu moja kwa moja:

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

`process.argv` inakuwezesha kusoma hoja za mstari wa amri:

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

Njia ya `cwd()` inaonyesha saraka ya kazi ya sasa:

```js
console.log(process.cwd());
```

Matukio ya mchakato ni kipengele kikuu cha Node.js kinachoruhusu programu yako kujibu wakati muhimu katika mzunguko wake wa maisha, kama vile inapoanza kutoka, kukutana na kosa, au kupokea ishara ya mfumo.

Tukio la `exit`, kwa mfano, hufanyika kabla mchakato wa Node.js haujakamilika:

```js
process.on("exit", (code) => {
  console.log(`Process exiting with code: ${code}`);
});

// Process exiting with code: 0
```

Tukio la `uncaughtException` huchochewa wakati kosa halijakamatwa kwenye msimbo wako, jambo ambalo linaweza kusaidia kuzuia kuanguka kwa programu:

```js
process.on("uncaughtException", (err) => {
  console.error("Uncaught error:", err.message);
});
```

Mwishowe, tukio la `warning` huchochewa wakati Node.js inatoa onyo la mchakato:

```js
process.on("warning", (warning) => {
  console.warn("Warning name:", warning.name);
  console.warn("Warning message:", warning.message);
});
```

Kisha unaweza kutumia njia ya `emitWarning()` kuchochea onyo maalum:

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

Njia ya `process.emitWarning()` hufanya nini?

## --answers--

Inasimamisha mchakato wakati onyo maalum linapotokea.

### --feedback--

Fikiria jinsi Node.js inavyoshughulikia onyo maalum kupitia matukio.

---

Inachochea tukio la onyo maalum ambalo linaweza kushughulikiwa na msikilizaji wa onyo.

---

Inaandika kosa na kuacha mchakato mara moja.

### --feedback--

Fikiria jinsi Node.js inavyoshughulikia onyo maalum kupitia matukio.

---

Inaanzisha upya mchakato wa Node.js baada ya kuonyesha onyo.

### --feedback--

Fikiria jinsi Node.js inavyoshughulikia onyo maalum kupitia matukio.

## --video-solution--

2

## --text--

Unatumiaje moduli ya mchakato?

## --answers--

Kwa kuitaja moja kwa moja kwa kuwa ni kitu cha kimataifa.

---

Kwa kuiwezesha kwenye faili la usanidi la Node.js.

### --feedback--

Fikiria kwa nini unaweza kupata mchakato popote bila usanidi.

---

Kwa kuiweka kwa mkono kwa kutumia npm kabla ya kuitaja.

### --feedback--

Fikiria kwa nini unaweza kupata mchakato popote bila usanidi.

---

Kwa kuiimporti kwa kutumia require('process') kabla ya kila matumizi.

### --feedback--

Fikiria kwa nini unaweza kupata mchakato popote bila usanidi.

## --video-solution--

1

## --text--

Matukio ya mchakato hutumika kwa ajili gani?

## --answers--

Kuweka vigezo vya mazingira kwa ajili ya programu.

### --feedback--

Fikiria jinsi Node.js inavyorejea kwa mabadiliko ya mzunguko wa maisha wakati wa utekelezaji.

---

Kuunda michakato mipya kwa ajili ya utekelezaji sambamba.

### --feedback--

Fikiria jinsi Node.js inavyorejea kwa mabadiliko ya mzunguko wa maisha wakati wa utekelezaji.

---

Kusikiliza na kujibu wakati muhimu wa mzunguko wa maisha kama kutoka, makosa, au ishara za mfumo.

---

Kusimamia njia za faili na viambatisho katika mfumo.

### --feedback--

Fikiria jinsi Node.js inavyorejea kwa mabadiliko ya mzunguko wa maisha wakati wa utekelezaji.

## --video-solution--

3
