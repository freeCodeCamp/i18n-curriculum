---
id: 657bdc55a322aae1eac3838f
title: Baue einen Palindrome Checker
challengeType: 14
forumTopicId: 16004
dashedName: build-a-palindrome-checker
---

# --description--

Ein <dfn>Palindrom</dfn> kann sowohl ein Wort als auch ein Satz sein, das sowohl vorwärts als auch rückwärts gelesen dasselbe Wort bzw. denselben Satz ergibt. Interpunktion, Leerzeichen sowie Groß- und Kleinschreibung ausgenommen.

**Hinweis:** Du musst **alle nicht-alphanumerischen Zeichen** (Satzzeichen, Leerzeichen und Symbole) entfernen und alle Zeichen in ein und dieselbe Schreibweise (Klein- oder Großbuchstaben) bringen, um Palindrome zu prüfen.

**Objective:** Build an app that is functionally similar to <a href="https://palindrome-checker.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://palindrome-checker.freecodecamp.rocks</a>.

**User Stories:**

1. You should have an `input` element with an `id` of `"text-input"`.
1. You should have a `button` element with an `id` of `"check-btn"`.
1. You should have a `div`, `span` or `p` element with an `id` of `"result"`.
1. When you click on the `#check-btn` element without entering a value into the `#text-input` element, an alert should appear with the text `"Please input a value"`.
1. When the `#text-input` element only contains the letter `A` and the `#check-btn` element is clicked, the `#result` element should contain the text `"A is a palindrome"`.
1. When the `#text-input` element contains the text `eye` and the `#check-btn` element is clicked, the `#result` element should contain the text `"eye is a palindrome"`.
1. When the `#text-input` element contains the text `_eye` and the `#check-btn` element is clicked, the `#result` element should contain the text `"_eye is a palindrome"`.
1. When the `#text-input` element contains the text `race car` and the `#check-btn` element is clicked, the `#result` element should contain the text `"race car is a palindrome"`.
1. When the `#text-input` element contains the text `not a palindrome` and the `#check-btn` element is clicked, the `#result` element should contain the text `"not a palindrome is not a palindrome"`.
1. Wenn das `#text-input` Element den Text `A man, a plan, a canal. Panama` enthält und das `#check-btn` Element angeklickt wird, sollte das `#result` Element den Text `"Ein Mann, ein Plan, ein Kanal. Panama is a palindrome"`.
1. When the `#text-input` element contains the text `never odd or even` and the `#check-btn` element is clicked, the `#result` element should contain the text `"never odd or even is a palindrome"`.
1. When the `#text-input` element contains the text `nope` and the `#check-btn` element is clicked, the `#result` element should contain the text `"nope is not a palindrome"`.
1. When the `#text-input` element contains the text `almostomla` and the `#check-btn` element is clicked, the `#result` element should contain the text `"almostomla is not a palindrome"`.
1. When the `#text-input` element contains the text `My age is 0, 0 si ega ym.` and the `#check-btn` element is clicked, the `#result` element should contain the text `"My age is 0, 0 si ega ym. is a palindrome"`.
1. Wenn das `#text-input`-Element einen Text `1 eye for of 1 eye.` enthält und das `#check-btn`-Element angeklickt wird, sollte das `#result`-Element den Text `"1 eye for od 1 eye. is not a palindrome"`.
1. When the `#text-input` element contains the text `0_0 (: /-\ :) 0-0` and the `#check-btn` element is clicked, the `#result` element should contain the text `"0_0 (: /-\ :) 0-0 is a palindrome"`.
1. When the `#text-input` element contains the text `five|\_/|four` and the `#check-btn` element is clicked, the `#result` element should contain the text `"five|\_/|four is not a palindrome"`.

Erfülle die folgenden User Stories und bestehe alle Tests, um dieses Projekt abzuschließen. Gib dem Ganzen deinen persönlichen Stil. Viel Spaß beim Programmieren!

# --hints--

Du solltest ein `input`-Element mit einer `id` von `text-input` haben.

```js
const el = document.getElementById('text-input');
assert.strictEqual(el?.nodeName?.toLowerCase(), 'input');
```

Du solltest ein `button`-Element mit einer `id` von `"check-btn"` haben.

```js
const el = document.getElementById('check-btn');
assert.strictEqual(el?.nodeName?.toLowerCase(), 'button');
```

Du solltest ein `div`-, `span` oder `p` Element mit einer `id` von `result` haben.

```js
const el = document.getElementById('result');
assert(['div', 'span', 'p'].includes(el?.nodeName?.toLowerCase()));
```

Wenn man auf das`#check-btn` Element klickt ohne einen Wert in das `#text-input` Feld einzugeben, sollte ein Warnhinweis erscheinen mit dem Text `"Please input a value"`.

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

Wenn das `#text-input`-Element den Buchstaben `A` enthält und das `#check-btn`-Element angeklickt wird, sollte das `#result`-Element den Text `"A is a palindrome"` enthalten.

```js
const inputEl = document.getElementById('text-input');
const checkBtn = document.getElementById('check-btn');
const resultEl = document.getElementById('result');

inputEl.value = 'A';
inputEl.dispatchEvent(new Event('change'))
checkBtn.click();
assert.strictEqual(resultEl.innerText.trim().replace(/[.,?!]+$/g, '').toLowerCase(), 'a is a palindrome');
```

Wenn das `#text-input`-Element einen Text `eye` enthält und das `#check-btn`-Element angeklickt wird, sollte das `#result`-Element den Text `"eye is a palindrome"` ausgeben.

```js
const inputEl = document.getElementById('text-input');
const checkBtn = document.getElementById('check-btn');
const resultEl = document.getElementById('result');

inputEl.value = 'eye';
inputEl.dispatchEvent(new Event('change'))
checkBtn.click();
assert.strictEqual(resultEl.innerText.trim().replace(/[.,?!]+$/g, '').toLowerCase(), 'eye is a palindrome');
```

Wenn das `#text-input`-Element einen Text `_eye` enthält und das `#check-btn`-Element angeklickt wird, sollte das `#result`-Element den Text `_eye is a palindrome` ausgeben.

```js
const inputEl = document.getElementById('text-input');
const checkBtn = document.getElementById('check-btn');
const resultEl = document.getElementById('result');

inputEl.value = '_eye';
inputEl.dispatchEvent(new Event('change'))
checkBtn.click();
assert.strictEqual(resultEl.innerText.trim().replace(/[.,?!]+$/g, '').toLowerCase(), '_eye is a palindrome');
```

Wenn das `#text-input`-Element einen Text `race car` enthält und das `#check-btn`-Element angeklickt wird, sollte das `#result`-Element den Text `"race car is a palindrome"` ausgeben.

```js
const inputEl = document.getElementById('text-input');
const checkBtn = document.getElementById('check-btn');
const resultEl = document.getElementById('result');

inputEl.value = 'race car';
inputEl.dispatchEvent(new Event('change'))
checkBtn.click();
assert.strictEqual(resultEl.innerText.trim().replace(/[.,?!]+$/g, '').toLowerCase(), 'race car is a palindrome');
```

Wenn das `#text-input`-Element einen Text `not a palindrome` enthält und das `#check-btn`-Element angeklickt wird, sollte das `#result`-Element den Text `"not a palindrome" is not a palindrome` ausgeben.

```js
const inputEl = document.getElementById('text-input');
const checkBtn = document.getElementById('check-btn');
const resultEl = document.getElementById('result');

inputEl.value = 'not a palindrome';
inputEl.dispatchEvent(new Event('change'))
checkBtn.click();
assert.strictEqual(resultEl.innerText.trim().replace(/[.,?!]+$/g, '').toLowerCase(), 'not a palindrome is not a palindrome');
```

Wenn das `#text-input` Element den Text `A man, a plan, a canal. Panama` enthält und das `#check-btn` Element angeklickt wird, sollte das `#result` Element den Text `"Ein Mann, ein Plan, ein Kanal. Panama ist ein Palindrom"` ausgeben.

```js
const inputEl = document.getElementById('text-input');
const checkBtn = document.getElementById('check-btn');
const resultEl = document.getElementById('result');

inputEl.value = 'A man, a plan, a canal. Panama';
inputEl.dispatchEvent(new Event('change'))
checkBtn.click();
assert.strictEqual(resultEl.innerText.trim().replace(/[.,?!]+$/g, '').toLowerCase(), 'a man, a plan, a canal. panama is a palindrome');
```

Wenn das `#text-input`-Element einen Text `never odd or even` enthält und das `#check-btn`-Element angeklickt wird, sollte das `#result`-Element den Text `never odd or even is a palindrome` ausgeben.

```js
const inputEl = document.getElementById('text-input');
const checkBtn = document.getElementById('check-btn');
const resultEl = document.getElementById('result');

inputEl.value = 'never odd or even';
inputEl.dispatchEvent(new Event('change'))
checkBtn.click();
assert.strictEqual(resultEl.innerText.trim().replace(/[.,?!]+$/g, '').toLowerCase(), 'never odd or even is a palindrome');
```

Wenn das `#text-input`-Element einen Text `nope` enthält und das `#check-btn`-Element angeklickt wird, sollte das `#result`-Element den Text `nope is not a palindrome` ausgeben.

```js
const inputEl = document.getElementById('text-input');
const checkBtn = document.getElementById('check-btn');
const resultEl = document.getElementById('result');

inputEl.value = 'nope';
inputEl.dispatchEvent(new Event('change'))
checkBtn.click();
assert.strictEqual(resultEl.innerText.trim().replace(/[.,?!]+$/g, '').toLowerCase(), 'nope is not a palindrome');
```

Wenn das `#text-input`-Element einen Text ` almostomla` enthält und das `#check-btn`-Element angeklickt wird, sollte das `#result`-Element den Text ` "almostomla is not a palindrome"` ausgeben.

```js
const inputEl = document.getElementById('text-input');
const checkBtn = document.getElementById('check-btn');
const resultEl = document.getElementById('result');

inputEl.value = 'almostomla';
inputEl.dispatchEvent(new Event('change'))
checkBtn.click();
assert.strictEqual(resultEl.innerText.trim().replace(/[.,?!]+$/g, '').toLowerCase(), 'almostomla is not a palindrome');
```

Wenn das `#text-input`-Element einen Text `My age is 0, 0 si ega ym.` enthält und das `#check-btn`-Element angeklickt wird, sollte das `#result`-Element den Text `My age is 0, 0 si ega ym. is a palindrome"` ausgeben.

```js
const inputEl = document.getElementById('text-input');
const checkBtn = document.getElementById('check-btn');
const resultEl = document.getElementById('result');

inputEl.value = 'My age is 0, 0 si ega ym.';
inputEl.dispatchEvent(new Event('change'))
checkBtn.click();
assert.strictEqual(resultEl.innerText.trim().replace(/[.,?!]+$/g, '').toLowerCase(), 'my age is 0, 0 si ega ym. is a palindrome');
```

Wenn das `#text-input`-Element einen Text `1 eye for of 1 eye.` enthält und das `#check-btn`-Element angeklickt wird, sollte das `#result`-Element den Text `"1 eye for od 1 eye. is not a palindrome"` ausgeben.

```js
const inputEl = document.getElementById('text-input');
const checkBtn = document.getElementById('check-btn');
const resultEl = document.getElementById('result');

inputEl.value = '1 eye for of 1 eye.';
inputEl.dispatchEvent(new Event('change'))
checkBtn.click();
assert.strictEqual(resultEl.innerText.trim().replace(/[.,?!]+$/g, '').toLowerCase(), '1 eye for of 1 eye. is not a palindrome');
```

Wenn das `#text-input`-Element einen Text `0_0 (: /-\ :) 0-0` enthält und das `#check-btn`-Element angeklickt wird, sollte das `#result`-Element den Text `0_0 (: /-\ :) 0-0 is a palindrome` ausgeben.

```js
const inputEl = document.getElementById('text-input');
const checkBtn = document.getElementById('check-btn');
const resultEl = document.getElementById('result');

inputEl.value = '0_0 (: /-\ :) 0-0';
inputEl.dispatchEvent(new Event('change'))
checkBtn.click();
assert.strictEqual(resultEl.innerText.trim().replace(/[.,?!]+$/g, '').toLowerCase(), '0_0 (: /-\ :) 0-0 is a palindrome');
```

Wenn das `#text-input`-Element einen Text `five|\_/|four` enthält und das `#check-btn`-Element angeklickt wird, sollte das `#result`-Element den Text `five|\_/|four is not a palindrome` ausgeben.

```js
const inputEl = document.getElementById('text-input');
const checkBtn = document.getElementById('check-btn');
const resultEl = document.getElementById('result');

inputEl.value = 'five|\_/|four';
inputEl.dispatchEvent(new Event('change'))
checkBtn.click();
assert.strictEqual(resultEl.innerText.trim().replace(/[.,?!]+$/g, '').toLowerCase(), 'five|\_/|four is not a palindrome');
```

Wenn das `#text-input` Element ein alphanumerisches Palindrom enthält, sollte das `#result` Element es korrekt als Palindrom identifizieren.

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

Wenn das `#text-input` Element eine zufällige Sequenz alphanumerischer Zeichen enthält, die kein Palindrom, das `#result` Element sollte angeben, dass es kein Palindrom ist.

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
