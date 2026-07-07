---
id: 66edc31c44f1b9c1d5c5ebca
title: Cuestionario de Cadenas de JavaScript
challengeType: 8
dashedName: quiz-javascript-strings
---

# --description--

Para aprobar el cuestionario, debe responder correctamente al menos 18 de las 20 preguntas a continuación.

# --quizzes--

## --quiz--

### --question--

#### --text--

¿Cuál es el valor de retorno del método `includes()`?

#### --distractors--

Si la subcadena se encuentra dentro de la cadena, el método devuelve la cadena. De lo contrario, devuelve `undefined`.

---

Si el substring se encuentra dentro de la cadena, el método devuelve `true`. De lo contrario, devuelve una cadena vacía.

---

Si el substring se encuentra dentro de la cadena, el método devuelve la cadena. De lo contrario, devuelve `null`.

#### --answer--

Si el substring se encuentra dentro de la cadena, el método devuelve `true`. De lo contrario, devuelve `false`.

### --question--

#### --text--

¿Cuál opción representa la interpolación de cadenas?

#### --distractors--

`"Hello, " + user + "!"`

---

`"Hello, $user!"`

---

`` `Hello, {user}!` ``

#### --answer--

`` `Hello, ${user}!` ``

### --question--

#### --text--

¿Cuál de las siguientes opciones es el carácter de nueva línea?

#### --distractors--

`\newline`

---

`\new`

---

`\line`

#### --answer--

`\n`

### --question--

#### --text--

¿Cuál de las siguientes afirmaciones es correcta sobre las cadenas?

#### --distractors--

Las cadenas son mutables y pueden cambiarse después de que se crean.

---

Las cadenas son tipos de datos no primitivos.

---

Las cadenas solo pueden crearse usando comillas simples.

#### --answer--

Las cadenas son inmutables.

### --question--

#### --text--

¿Qué significa ASCII?

#### --distractors--

Código estándar americano para Internet Información

---

Código avanzado sistemático para intercambio interno

---

Código estándar automático para información interna

#### --answer--

Código estándar americano para intercambio de información

### --question--

#### --text--

¿Cuál de los siguientes métodos extrae una parte de una cadena y devuelve una nueva cadena?

#### --distractors--

`trim()`

---

`indexOf()`

---

`prompt()`

#### --answer--

`slice()`

### --question--

#### --text--

¿Cuál es el propósito del método `prompt()`?

#### --distractors--

Muestra un mensaje en la consola.

---

Muestra un cuadro de alerta con un mensaje.

---

Muestra un cuadro de confirmación con un mensaje.

#### --answer--

Muestra un cuadro de diálogo que espera la entrada del usuario.

### --question--

#### --text--

¿Cuál de las siguientes es la manera correcta de acceder al tercer carácter de una cadena?

#### --distractors--

```js
const developer = "Jessica";
developer[3];
```

---

```js
const developer = "Jessica";
developer[-1];
```

---

```js
const developer = "Jessica";
developer[0];
```

#### --answer--

```js
const developer = "Jessica";
developer[2];
```

### --question--

#### --text--

¿Cómo puedes obtener el valor ASCII del primer carácter en la cadena `"hello"`?

#### --distractors--

`"hello".charCode(0)`

---

`"hello".codeAt(0)`

---

`"hello".getCharIndex(0)`

#### --answer--

`"hello".charCodeAt(0)`

### --question--

#### --text--

¿Qué método puedes utilizar para obtener el carácter correspondiente a un valor ASCII?

#### --distractors--

`toASCII()`

---

`toChar()`

---

`toCode()`

#### --answer--

`fromCharCode()`

### --question--

#### --text--

¿Cuál de los siguientes ejemplos de `indexOf` registrará `-1` en la consola?

#### --distractors--

```js
const organization = "freeCodeCamp";
console.log(organization.indexOf("e"));
```

---

```js
const organization = "freeCodeCamp";
console.log(organization.indexOf("f"));
```

---

```js
const organization = "freeCodeCamp";
console.log(organization.indexOf("C"));
```

#### --answer--

```js
const organization = "freeCodeCamp";
console.log(organization.indexOf("c"));
```

### --question--

#### --text--

¿Cómo puedes verificar si la cadena `"JavaScript"` contiene `"Script"`?

#### --distractors--

`"JavaScript".has("Script")`

---

`"JavaScript".contains("Script")`

---

`"JavaScript".exists("Script")`

#### --answer--

`"JavaScript".includes("Script")`

### --question--

#### --text--

¿Cuál de las siguientes extrae la subcadena `"Script"` de la cadena `"JavaScript"`?

#### --distractors--

`"JavaScript".find(5)`

---

`"JavaScript".extract(4)`

---

`"JavaScript".cut(5)`

#### --answer--

`"JavaScript".slice(4)`

### --question--

#### --text--

¿Cómo puedes convertir la cadena `"JavaScript"` a mayúsculas?

#### --distractors--

`"JavaScript".upper()`

---

`"JavaScript".toUpper()`

---

`"JavaScript".convertUpper()`

#### --answer--

`"JavaScript".toUpperCase()`

### --question--

#### --text--

¿Cómo puedes convertir la cadena `"JavaScript"` a minúsculas?

#### --distractors--

`"JavaScript".lower()`

---

`"JavaScript".toLower()`

---

`"JavaScript".convertLower()`

#### --answer--

`"JavaScript".toLowerCase()`

### --question--

#### --text--

¿Cuál de los siguientes reemplazará `"dogs"` por `"cats"` en la cadena `"I love dogs"`?

#### --distractors--

`"I love dogs".slice("dogs", "cats")`

---

`"I love dogs".replaceWith("dogs", "cats")`

---

`"I love dogs".find("dogs", "cats")`

#### --answer--

`"I love dogs".replace("dogs", "cats")`

### --question--

#### --text--

¿Qué método se utiliza para repetir una cadena un número especificado de veces?

#### --distractors--

`times()`

---

`repeatTimes()`

---

`repeatNumber()`

#### --answer--

`repeat()`

### --question--

#### --text--

¿Qué devolverá el siguiente código: `"abc".repeat(3)`?

#### --distractors--

`"abcabc"`

---

`"abcabcabcabc"`

---

Arrojará un error.

#### --answer--

`"abcabcabc"`

### --question--

#### --text--

¿Qué método eliminará los espacios en blanco del principio y el final de una cadena?

#### --distractors--

`strip()`

---

`removeWhitespace()`

---

`trimWhitespace()`

#### --answer--

`trim()`

### --question--

#### --text--

¿Cuál de las siguientes es la sintaxis correcta para escapar comillas?

#### --distractors--

```js
"She said, ?"Hello!?""
```

---

```js
"She said, ."Hello!.""
```

---

```js
"She said, //"Hello!//""
```

#### --answer--

```js
"She said, \"Hello!\""
```

