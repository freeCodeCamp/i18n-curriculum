---
id: 657bdc55a322aae1eac3838f
title: Construye un comprobador de palíndromos
challengeType: 14
forumTopicId: 16004
dashedName: build-a-palindrome-checker
---

# --description--

Un <dfn>palíndromo</dfn> es una palabra o frase que se escribe de la misma manera hacia adelante y hacia atrás, ignorando la puntuación, mayúsculas, minúsculas y espaciado.

**Nota:** Tendrás que eliminar **todos los caracteres no alfanuméricos** (puntuación, espacios y símbolos) y convertir todo en el mismo caso (minúsculas o mayúsculas) para comprobar si hay palíndromos.

**Objetivo:** Construir una aplicación que sea funcionalmente similar a <a href="https://palindrome-checker.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://palindrome-checker.freecodecamp.rocks</a>

**Historias de usuario:**

1. Debes tener un elemento `input` con un `id` de `"text-input"`
1. Debes tener un elemento `button` con un `id` de `"check-btn"`
1. Deberías tener un elemento `div`, `span` o `p` con un `id` o=`"result"`
1. Cuando haces click en el elemento `#check-btn` sin ingresar un valor en el elemento `#text-input`, debería aparecer una alerta con el texto `"Please input a value"`
1. Cuando el elemento `#text-input` solo contiene la letra `A` y se hace clic en el elemento `#check-btn`, el elemento `#result` debería contener el texto `"A is a palindrome"`
1. Cuando el elemento `#text-input` contiene el texto `eye` y se hace click en el elemento `#check-btn`, el elemento `#result` debería contener el texto `"eye is a palindrome"`
1. Cuando el elemento `#text-input` contiene el texto `_eye` y se hace clic en el elemento `#check-btn`, el elemento `#result` debería contener el texto `"_eye is a palindrome"`
1. Cuando el elemento `#text-input` contiene el texto `race car` y se hace click en el elemento `#check-btn`, el elemento `#result` debería contener el texto `"race car is a palindrome"`
1. Cuando el elemento `#text-input` contiene el texto `not a palindrome` y el elemento `#check-btn` es pulsado, el elemento `#result` debe contener el texto `"not a palindrome is not a palindrome"`
1. Cuando el elemento `#text-input` contiene el texto `A man, a plan, a canal. Panama` y el elemento `#check-btn` es pulsado, el elemento `#result` debe contener el texto `"A man, a plan, a canal. Panama is a palindrome"`
1. Cuando el elemento `#text-input` contiene el texto `never odd or even` y el elemento `#check-btn` es pulsado, el elemento `#result` debe contener el texto `"never odd or even is a palindrome"`
1. Cuando el elemento `#text-input` contiene el texto `nope` y se hace clic en el elemento `#check-btn`, el elemento `#result` debe contener el texto `"nope is not a palindrome"`
1. Cuando el elemento `#text-input` contiene el texto `almostomla` y se hace clic en el elemento `#check-btn`, el elemento `#result` debe contener el texto `"almostomla is not a palindrome`
1. Cuando el elemento `#text-input` contiene el texto `My age is 0, 0 si ega ym.` y el elemento `#check-btn` es pulsado, el elemento `#result` debe contener el texto `"My age is 0, 0 si ega ym. is a palindrome"`
1. Cuando el elemento `#text-input` contiene el texto `1 eye for of 1 eye` y se hace clic en el elemento `#check-btn`, el elemento `#result` debería contener el texto `"1 eye for of 1 eye. is not a palindrome"`
1. Cuando el elemento `#text-input` contiene el texto `0_0 (: /-\ :) 0-0` y el elemento `#check-btn` es pulsado, el elemento `#result` debe contener el texto `"0_0 (: /-\ :) 0-0 is a palindrome"`
1. Cuando el elemento `#text-input` contiene el texto `five|\_/|four` y se hace clic en el elemento `#check-btn`, el elemento `#result` debe contener el texto `"five|\_/|four is not a palindrome"`

Completa las historias de usuario y pasa todas las pruebas a continuación para completar este proyecto. Dale tu propio estilo personal. ¡Feliz día programando!

# --hints--

Debes tener un elemento `input` con un `id` de `"text-input"`.

```js
const el = document.getElementById('text-input');
assert.strictEqual(el?.nodeName?.toLowerCase(), 'input');
```

Debes tener un elemento `button` con un `id` de `"check-btn"`.

```js
const el = document.getElementById('check-btn');
assert.strictEqual(el?.nodeName?.toLowerCase(), 'button');
```

Deberías tener un elemento `div`, `span`, o `p` con un `id` = `result`.

```js
const el = document.getElementById('result');
assert(['div', 'span', 'p'].includes(el?.nodeName?.toLowerCase()));
```

Cuando haces click en el elemento `#check-btn` sin ingresar un valor en el elemento `#text-input`, debería aparecer una alerta con el texto `"Please input a value"`.

```js
const inputEl = document.getElementById('text-input');
const checkBtn = document.getElementById('check-btn');
let alertMessage;
window.alert = (message) => alertMessage = message; // Override alert and store message

inputEl.value = '';
inputEl.dispatchEvent(new Event('change'))
checkBtn.click();
assert.strictEqual(alertMessage.trim().replace(/[.,?!]+$/g, '').toLowerCase(), 'please input a value');
```

Cuando el elemento `#text-input` solo contiene la letra `A` y se hace clic en el elemento `#check-btn`, el elemento `#result` debería contener el texto `"A is a palindrome"`.

```js
const inputEl = document.getElementById('text-input');
const checkBtn = document.getElementById('check-btn');
const resultEl = document.getElementById('result');

inputEl.value = 'A';
inputEl.dispatchEvent(new Event('change'))
checkBtn.click();
assert.strictEqual(resultEl.innerText.trim().replace(/[.,?!]+$/g, '').toLowerCase(), 'a is a palindrome');
```

Cuando el elemento `#text-input` contiene el texto `eye` y se hace click en el elemento `#check-btn`, el elemento `#result` debería contener el texto `"eye is a palindrome"`.

```js
const inputEl = document.getElementById('text-input');
const checkBtn = document.getElementById('check-btn');
const resultEl = document.getElementById('result');

inputEl.value = 'eye';
inputEl.dispatchEvent(new Event('change'))
checkBtn.click();
assert.strictEqual(resultEl.innerText.trim().replace(/[.,?!]+$/g, '').toLowerCase(), 'eye is a palindrome');
```

Cuando el elemento `#text-input` contiene el texto `_eye` y se hace clic en el elemento `#check-btn`, el elemento `#result` debería contener el texto `"_eye is a palindrome"`.

```js
const inputEl = document.getElementById('text-input');
const checkBtn = document.getElementById('check-btn');
const resultEl = document.getElementById('result');

inputEl.value = '_eye';
inputEl.dispatchEvent(new Event('change'))
checkBtn.click();
assert.strictEqual(resultEl.innerText.trim().replace(/[.,?!]+$/g, '').toLowerCase(), '_eye is a palindrome');
```

Cuando el elemento `#text-input` contiene el texto `race car` y se hace click en el elemento `#check-btn`, el elemento `#result` debería contener el texto `"race car is a palindrome"`.

```js
const inputEl = document.getElementById('text-input');
const checkBtn = document.getElementById('check-btn');
const resultEl = document.getElementById('result');

inputEl.value = 'race car';
inputEl.dispatchEvent(new Event('change'))
checkBtn.click();
assert.strictEqual(resultEl.innerText.trim().replace(/[.,?!]+$/g, '').toLowerCase(), 'race car is a palindrome');
```

Cuando el elemento `#text-input` contiene el texto `not a palindrome` y el elemento `#check-btn` es pulsado, el elemento `#result` debe contener el texto `"not a palindrome is not a palindrome"`.

```js
const inputEl = document.getElementById('text-input');
const checkBtn = document.getElementById('check-btn');
const resultEl = document.getElementById('result');

inputEl.value = 'not a palindrome';
inputEl.dispatchEvent(new Event('change'))
checkBtn.click();
assert.strictEqual(resultEl.innerText.trim().replace(/[.,?!]+$/g, '').toLowerCase(), 'not a palindrome is not a palindrome');
```

Cuando el elemento `#text-input` contiene el texto `A man, a plan, a canal. Panama` y el elemento `#check-btn` es pulsado, el elemento `#result` debe contener el texto `"A man, a plan, a canal. Panama is a palindrome"`.

```js
const inputEl = document.getElementById('text-input');
const checkBtn = document.getElementById('check-btn');
const resultEl = document.getElementById('result');

inputEl.value = 'A man, a plan, a canal. Panama';
inputEl.dispatchEvent(new Event('change'))
checkBtn.click();
assert.strictEqual(resultEl.innerText.trim().replace(/[.,?!]+$/g, '').toLowerCase(), 'a man, a plan, a canal. panama is a palindrome');
```

Cuando el elemento `#text-input` contiene el texto `never odd or even` y el elemento `#check-btn` es pulsado, el elemento `#result` debe contener el texto `"never odd or even is a palindrome"`.

```js
const inputEl = document.getElementById('text-input');
const checkBtn = document.getElementById('check-btn');
const resultEl = document.getElementById('result');

inputEl.value = 'never odd or even';
inputEl.dispatchEvent(new Event('change'))
checkBtn.click();
assert.strictEqual(resultEl.innerText.trim().replace(/[.,?!]+$/g, '').toLowerCase(), 'never odd or even is a palindrome');
```

Cuando el elemento `#text-input` contiene el texto `nope` y se hace clic en el elemento `#check-btn`, el elemento `#result` debe contener el texto `"nope is not a palindrome"`.

```js
const inputEl = document.getElementById('text-input');
const checkBtn = document.getElementById('check-btn');
const resultEl = document.getElementById('result');

inputEl.value = 'nope';
inputEl.dispatchEvent(new Event('change'))
checkBtn.click();
assert.strictEqual(resultEl.innerText.trim().replace(/[.,?!]+$/g, '').toLowerCase(), 'nope is not a palindrome');
```

Cuando el elemento `#text-input` contiene el texto `almostomla` y se hace clic en el elemento `#check-btn`, el elemento `#result` debe contener el texto `"almostomla is not a palindrome"`.

```js
const inputEl = document.getElementById('text-input');
const checkBtn = document.getElementById('check-btn');
const resultEl = document.getElementById('result');

inputEl.value = 'almostomla';
inputEl.dispatchEvent(new Event('change'))
checkBtn.click();
assert.strictEqual(resultEl.innerText.trim().replace(/[.,?!]+$/g, '').toLowerCase(), 'almostomla is not a palindrome');
```

Cuando el elemento `#text-input` contiene el texto `My age is 0, 0 si ega ym.` y el elemento `#check-btn` es pulsado, el elemento `#result` debe contener el texto `"My age is 0, 0 si ega ym. is a palindrome"`.

```js
const inputEl = document.getElementById('text-input');
const checkBtn = document.getElementById('check-btn');
const resultEl = document.getElementById('result');

inputEl.value = 'My age is 0, 0 si ega ym.';
inputEl.dispatchEvent(new Event('change'))
checkBtn.click();
assert.strictEqual(resultEl.innerText.trim().replace(/[.,?!]+$/g, '').toLowerCase(), 'my age is 0, 0 si ega ym. is a palindrome');
```

Cuando el elemento `#text-input` contiene el texto `1 eye for of 1 eye.` y se hace clic en el elemento `#check-btn`, el elemento `#result` debería contener el texto `"1 eye for of 1 eye. is not a palindrome"`.

```js
const inputEl = document.getElementById('text-input');
const checkBtn = document.getElementById('check-btn');
const resultEl = document.getElementById('result');

inputEl.value = '1 eye for of 1 eye.';
inputEl.dispatchEvent(new Event('change'))
checkBtn.click();
assert.strictEqual(resultEl.innerText.trim().replace(/[.,?!]+$/g, '').toLowerCase(), '1 eye for of 1 eye. is not a palindrome');
```

Cuando el elemento `#text-input` contiene el texto `0_0 (: /-\ :) 0-0` y el elemento `#check-btn` es pulsado, el elemento `#result` debe contener el texto `"0_0 (: /-\ :) 0-0 is a palindrome"`.

```js
const inputEl = document.getElementById('text-input');
const checkBtn = document.getElementById('check-btn');
const resultEl = document.getElementById('result');

inputEl.value = '0_0 (: /-\ :) 0-0';
inputEl.dispatchEvent(new Event('change'))
checkBtn.click();
assert.strictEqual(resultEl.innerText.trim().replace(/[.,?!]+$/g, '').toLowerCase(), '0_0 (: /-\ :) 0-0 is a palindrome');
```

Cuando el elemento `#text-input` contiene el texto `five|\_/|four` y se hace clic en el elemento `#check-btn`, el elemento `#result` debe contener el texto `"five|\_/|four is not a palindrome"`.

```js
const inputEl = document.getElementById('text-input');
const checkBtn = document.getElementById('check-btn');
const resultEl = document.getElementById('result');

inputEl.value = 'five|\_/|four';
inputEl.dispatchEvent(new Event('change'))
checkBtn.click();
assert.strictEqual(resultEl.innerText.trim().replace(/[.,?!]+$/g, '').toLowerCase(), 'five|\_/|four is not a palindrome');
```

Cuando el elemento `#text-input` contiene un palíndromo alfanumérico, el elemento `#result` debe identificarlo correctamente como un palíndromo.

```js
const inputEl = document.getElementById('text-input');
const checkBtn = document.getElementById('check-btn');
const resultEl = document.getElementById('result');

const characters = 'abcdefghijklmnopqrstuvwxyz0123456789';
const charactersLength = characters.length;

const firstLetter = characters.charAt(Math.floor(Math.random() * charactersLength));
const secondLetter = characters.charAt(Math.floor(Math.random() * charactersLength));
const thirdLetter = characters.charAt(Math.floor(Math.random() * charactersLength));
const fourthLetter = characters.charAt(Math.floor(Math.random() * charactersLength));

const phrase = firstLetter + secondLetter + thirdLetter + fourthLetter + fourthLetter + thirdLetter + secondLetter + firstLetter;

inputEl.value = phrase;
inputEl.dispatchEvent(new Event('change'))
checkBtn.click();

assert.strictEqual(resultEl.innerText.trim().replace(/[.,?!]+$/g, '').toLowerCase(), phrase + ' is a palindrome');
```

Cuando el elemento `#text-input` contiene una secuencia aleatoria de caracteres alfanuméricos que no sea un palíndromo, el elemento `#result` debe decir que no es un palíndromo.

```js
const inputEl = document.getElementById('text-input');
const checkBtn = document.getElementById('check-btn');
const resultEl = document.getElementById('result');

let characters = 'abcdefghijklmnopqrstuvwxyz0123456789';
let charactersLength = characters.length;

const firstIndex = Math.floor(Math.random() * charactersLength);
const firstLetter = characters.charAt(firstIndex);
characters = characters.slice(0,firstIndex) + characters.slice(firstIndex + 1);
charactersLength--; 


const secondIndex = Math.floor(Math.random() * charactersLength); 
const secondLetter = characters.charAt(secondIndex);
characters = characters.slice(0,secondIndex) + characters.slice(secondIndex + 1);
charactersLength--; 

const thirdIndex = Math.floor(Math.random() * charactersLength); 
const thirdLetter = characters.charAt(thirdIndex);
characters = characters.slice(0,thirdIndex) + characters.slice(thirdIndex + 1);
charactersLength--; 

const fourthIndex = Math.floor(Math.random() * charactersLength); 
const fourthLetter = characters.charAt(fourthIndex);
characters = characters.slice(0,fourthIndex) + characters.slice(fourthIndex + 1);
charactersLength--; 

const phrase = firstLetter + secondLetter + thirdLetter + fourthLetter;

inputEl.value = phrase;
inputEl.dispatchEvent(new Event('change'))
checkBtn.click();

assert.strictEqual(resultEl.innerText.trim().replace(/[.,?!]+$/g, '').toLowerCase(), phrase + ' is not a palindrome');
```

# --seed--

## --seed-contents--

```html

```

```css

```

```js

```

# --solutions--

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      rel="icon"
      type="image/png"
      href="https://cdn.freecodecamp.org/universal/favicons/favicon.ico"
    />
    <title>Palindrome Checker</title>
    <link rel="stylesheet" href="styles.css" />
  </head>
  <body>
    <main class="container">
      <img
        class="freecodecamp-logo"
        src="https://cdn.freecodecamp.org/platform/universal/fcc_primary.svg"
        alt="freeCodeCamp Logo"
      />
      <h1 class="title">Is it a Palindrome?</h1>
      <div class="palindrome-div">
        <label for="text-input"
          >Enter in text to check for a palindrome:
        </label>
        <input class="palindrome-input" id="text-input" value="" type="text" />
        <button class="palindrome-btn" id="check-btn">Check</button>
        <div class="results-div hidden" id="result"></div>
      </div>
      <div class="palindrome-definition-div">
        <p class="palindrome-definition">
          <span role="img" aria-label="light-bulb">&#128161;</span>
          A <dfn>palindrome</dfn> is a word or sentence that's spelled the same
          way both forward and backward, ignoring punctuation, case, and
          spacing.
        </p>
      </div>
    </main>
    <script src="script.js"></script>
  </body>
</html>
```

```css
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  font-family: Verdana, Geneva, Tahoma, sans-serif;
  background-color: #0a0a23;
  color: #ffffff;
}

.container {
  width: 100%;
  min-height: 100vh;
  position: relative;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
}

.freecodecamp-logo {
  height: 30px;
  margin-bottom: 20px;
}

.title {
  text-align: center;
  padding: 10px 0;
  font-size: 2.5rem;
  margin-bottom: 20px;
}

.palindrome-div {
  width: min(100vw, 450px);
  min-height: 100px;
  border-radius: 20px;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-wrap: wrap;
  padding: 20px;
  margin: 10px 0;
  background-color: white;
  box-shadow: 0 6px 6px #002ead;
}

label {
  color: #0a0a23;
  margin-bottom: 20px;
}

.palindrome-btn {
  width: 90px;
  border: none;
  padding: 10px;
  border-radius: 15px;
  background-color: #5a01a7;
  color: #fff;
  cursor: pointer;
}

.palindrome-input {
  height: 30px;
  width: 250px;
  text-align: center;
  font-size: 1.2rem;
  margin: 10px;
  border: none;
  border-bottom: 2px solid #5a01a7;
}

.palindrome-input:focus {
  border-bottom: 3px solid #5a01a7;
}

.palindrome-input::placeholder {
  text-align: center;
}

.user-input {
  font-size: 1.4rem;
  margin-top: 10px;
  text-align: center;
}

.results-div {
  overflow-y: auto;
  word-wrap: break-word;
  min-height: 50px;
  color: black;
}

.hidden {
  display: none;
}

.palindrome-definition-div {
  width: min(100vw, 450px);
  font-size: 1.3rem;
  min-height: 140px;
  background-color: #00471b;
  margin-top: 20px;
  padding: 20px;
  border-radius: 20px;
  display: flex;
  align-items: center;
  justify-content: center;
}

.palindrome-definition {
  vertical-align: middle;
  text-align: center;
}
```

```js
const userInput = document.getElementById("text-input");
const checkPalindromeBtn = document.getElementById("check-btn");
const resultDiv = document.getElementById("result");

const checkForPalindrome = (input) => {
  const originalInput = input; // Store for later output

  if (input === "") {
    alert("Please input a value");
    return;
  }

  // Remove the previous result
  resultDiv.replaceChildren();

  const lowerCaseStr = input.replace(/[^A-Za-z0-9]/gi, "").toLowerCase();
  let resultMsg = `<strong>${originalInput}</strong> ${
    lowerCaseStr === [...lowerCaseStr].reverse().join("") ? "is" : "is not"
  } a palindrome.`;

  const pTag = document.createElement("p");
  pTag.className = "user-input";
  pTag.innerHTML = resultMsg;
  resultDiv.appendChild(pTag);

  // Show the result.
  resultDiv.classList.remove("hidden");
};

checkPalindromeBtn.addEventListener("click", () => {
  checkForPalindrome(userInput.value);
  userInput.value = "";
});

userInput.addEventListener("keydown", (e) => {
  if (e.key === "Enter") {
    checkForPalindrome(userInput.value);
    userInput.value = "";
  }
});
```
