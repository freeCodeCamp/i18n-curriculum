---
id: 66629f407d679d3105e8317f
title: Construye un juego de piedra, papel o tijera
challengeType: 14
dashedName: top-build-a-rock-paper-scissors-game
---

# --description--
Tu juego se jugará contra la computadora. Escribe una función que devuelva aleatoriamente `"rock"`, `"paper"` o `"scissors"`.

No necesitas preocuparte por la parte del front-end del juego. Solo escribe la lógica del juego. Abre el `script.js` y comienza a seguir las instrucciones.

**Historia de usuario:**

1. Debes tener una función llamada `getComputerChoice`.

1. Tu función `getComputerChoice` debe devolver aleatoriamente `"rock"`, `"paper"`, o `"scissors"`.

**Pista:** El método [Math.random](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math/random) devuelve un número aleatorio que es mayor o igual a 0 y menor que 1. Piensa en cómo puedes usar esto para devolver condicionalmente una de las múltiples opciones.

Tu juego será jugado por un jugador humano. Escribe una función que tome la elección del usuario y la devuelva.

1. Crea una función llamada `getHumanChoice`.

1. Escribe el código para que `getHumanChoice` devuelva una de las opciones válidas dependiendo de lo que el usuario ingrese.

**Pista:** Usa el método [prompt](https://developer.mozilla.org/en-US/docs/Web/API/Window/prompt) para obtener la entrada del usuario.

Tu juego lleva el registro de la puntuación del jugador. Escribe variables para llevar el registro de la puntuación del jugador.

1. Crea dos nuevas variables llamadas `humanScore` y `computerScore` en el ámbito global.

1. Inicializa esas variables con el valor de `0`.

Tu juego se jugará ronda por ronda. Escribe una función que tome las elecciones del jugador humano y la computadora como argumentos, juegue una sola ronda, incremente la puntuación del ganador de la ronda y registre un anuncio del ganador.

1. Crea una nueva función llamada `playRound`.

1. Define dos parámetros para `playRound`. Parámetro uno `humanChoice` y parámetro dos `computerChoice`. Usa estos dos parámetros para tomar las elecciones del humano y del ordenador como argumentos.

1. Haz que el parámetro `humanChoice` de tu función sea insensible a mayúsculas y minúsculas para que los jugadores puedan ingresar `"rock"`, `"ROCK"`, `"RocK"`, u otras variaciones.

1. Escribe el código para tu función `playRound` que devuelva un valor de cadena que represente al ganador de la ronda.

- Si hay un empate, debe devolver `"It's a tie!"`.

- Si el jugador gana, debe devolver `"You win! [player choice] beats [computer choice]"`.

- Si la computadora gana, debe devolver `"You lose! [computer choice] beats [player choice]"`.

1. Incrementa la variable `humanScore` o `computerScore` basada en el ganador de la ronda.

Tu juego jugará 3 rondas. Escribirás una función llamada `playGame` que llame a `playRound` para jugar 3 rondas, lleve el registro de las puntuaciones y declare un ganador al final.

1. Crea una nueva función llamada `playGame`.

1. Crea un bucle que juegue 3 rondas y llame a la función `playRound` cada vez con las funciones de elección del humano y la computadora como argumentos.

1. Al final del juego, devuelve al ganador del juego basado en quien ganó más rondas.

- Si el jugador humano gana más rondas que la computadora, devuelve un mensaje que diga `"You win the game!"`.

- Si la computadora gana más rondas que el jugador humano, devuelve un mensaje que diga `"You lose the game!"`.

# --hints--

Debes tener una función llamada `getComputerChoice`

```js
assert.isFunction(getComputerChoice);
```

Tu función `getComputerChoice` debe devolver `"rock"`, `"paper"`, o `"scissors"` aleatoriamente.

```js
const counts = {}
for (let i = 0; i < 100; i++) {
  const result = getComputerChoice();
  counts[result] = (counts[result] ?? 0) + 1;
}
assert.lengthOf(Object.keys(counts), 3);
assert.include(Object.keys(counts), "rock");
assert.include(Object.keys(counts), "paper"); 
assert.include(Object.keys(counts), "scissors");
```

Debes tener una función llamada `getHumanChoice`

```js
assert.isFunction(getHumanChoice);
```

Debes tener dos variables llamadas `humanScore` y `computerScore` en el ámbito global.

```js
assert.exists(humanScore);
assert.exists(computerScore);
```

Debes tener una función llamada `playRound`

```js
assert.isFunction(playRound);
```

Tu función `playRound` debe tomar las elecciones del jugador humano y de la computadora como argumentos con los parámetros `humanChoice` y `computerChoice`.

```js
assert.match(playRound.toString(), /\s*(?:\bhumanChoice\b\s*,\s*\bcomputerChoice\b)/);
```

Tu función `playRound` debe ser insensible a mayúsculas y minúsculas para que los jugadores puedan ingresar `"rock"`, `"ROCK"`, `"RocK"`, u otras variaciones.

```js
assert.match(playRound.toString(), /\bhumanChoice\s*\.toLowerCase\(\)/);
```

Tu función `playRound` debe devolver la cadena `"It's a tie!"` si las elecciones del humano y la computadora son las mismas.

```js
assert.equal(playRound("rock", "rock"), "It's a tie!");
```

Tu función `playRound` debe devolver la cadena `"You win! [player choice] beats [computer choice]"` si el jugador gana.

```js
assert.equal(playRound("rock", "scissors"), "You win! rock beats scissors");
```

Tu función `playRound` debe devolver la cadena `"You lose! [computer choice] beats [player choice]"` si la computadora gana.

```js
assert.equal(playRound("rock", "paper"), "You lose! paper beats rock");
```

Tu función `playRound` debe incrementar la variable `humanScore` o `computerScore` basada en el ganador de la ronda.

```js
humanScore = 0;
computerScore = 0;
playRound("rock", "scissors");
assert.equal(humanScore, 1);
```

Debes tener una función llamada `playGame`.

```js
assert.isFunction(playGame);
```

Debes usar un bucle para jugar 3 rondas.

```js
assert.match(playGame.toString(), /\bfor\s*\(/);
```

Debes devolver al ganador del juego basado en quien ganó más rondas.

```js
window.prompt = () => "rock";
assert.match(playGame(), /You (win|lose) the game!/);
```

# --seed--

## --seed-contents--

```js
const hand = ['rock', 'paper', 'scissor'];
```

```html
<html lang="en">
<head>
  <script src="script.js"></script>
</head>
</html>
```

# --solutions--

```html
<html lang="en">
<head>
  <script src="script.js"></script>
</head>
</html>
```

```js
const hand = ['rock', 'paper', 'scissors'];


let computerScore = 0;
let humanScore = 0;

const getComputerChoice = () => {
  return hand[Math.floor(Math.random() * hand.length)];
}

const getHumanChoice = () => {
  return prompt();
}

const playRound = (humanChoice, computerChoice) => {
  humanChoice = humanChoice.toLowerCase()

  const tie = "It's a tie!"
  const win = `You win! ${humanChoice} beats ${computerChoice}`
  const lose = `You lose! ${computerChoice} beats ${humanChoice}`


  if (humanChoice == 'rock') {
    if (computerChoice == 'rock') {
      computerScore++;
      humanScore++;
      return tie;
    } else if (computerChoice == 'paper') {
      computerScore++;
      return lose;
    } else {
      humanScore++;
      return win;
    }
  } else if (humanChoice == 'paper') {
    if (computerChoice == 'rock') {
      humanScore++;
      return win;
    } else if (computerChoice == 'paper') {
      computerScore++;
      humanScore++;
      return tie;
    } else {
      computerScore++;
      return lose;
    }
  } else if (humanChoice == 'scissors') {
    if (computerChoice == 'rock') {
      computerScore++;
      return lose;
    } else if (computerChoice == 'paper') {
      humanScore++;
      return win;
    } else {
      computerScore++;
      humanScore++;
      return tie;
    }
  }
}

const playGame = () => {
  for(let i = 0; i < 3; i++){
    playRound(getHumanChoice(), getComputerChoice())
  }

  return humanScore > computerScore ? "You win the game!" : "You lose the game!"
}

```

