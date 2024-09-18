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

Your game will play 3 rounds. You will write a function named `playGame` that calls `playRound` to play 3 rounds, keeps track of the scores, and declares a winner at the end.

1. Create a new function named `playGame`.

1. Create a loop that plays 3 rounds and calls the `playRound` function each time with the human's choice and the computer's choice functions as arguments.

1. At the end of the game, return the winner of the game based on who won the most rounds.

- If the human player wins more rounds than the computer player, return a message that says `"You win the game!"`.

- If the computer player wins more rounds than the human player, return a message that says `"You lose the game!"`.

# --hints--

You should have a function called `getComputerChoice`

```js
assert.isFunction(getComputerChoice);
```

Your `getComputerChoice` function should return `"rock"`, `"paper"`, or `"scissors"` at random.

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

You should have a function called `getHumanChoice`

```js
assert.isFunction(getHumanChoice);
```

You should have two variables named `humanScore` and `computerScore` in the global scope.

```js
assert.exists(humanScore);
assert.exists(computerScore);
```

You should have a function called `playRound`

```js
assert.isFunction(playRound);
```

Your `playRound` function should take the human and computer player choices as arguments with the parameters `humanChoice` and `computerChoice`.

```js
assert.match(playRound.toString(), /\s*(?:\bhumanChoice\b\s*,\s*\bcomputerChoice\b)/);
```

Your `playRound` function should be case-insensitive so that players can input `"rock"`, `"ROCK"`, `"RocK"`, or other variations.

```js
assert.match(playRound.toString(), /\bhumanChoice\s*\.toLowerCase\(\)/);
```

Your `playRound` function should return the string `"It's a tie!"` if the human and computer choices are the same.

```js
assert.equal(playRound("rock", "rock"), "It's a tie!");
```

Your `playRound` function should return the string `"You win! [player choice] beats [computer choice]"` if the player wins.

```js
assert.equal(playRound("rock", "scissors"), "You win! rock beats scissors");
```

Your `playRound` function should return the string `"You lose! [computer choice] beats [player choice]"` if the computer wins.

```js
assert.equal(playRound("rock", "paper"), "You lose! paper beats rock");
```

Your `playRound` function should increment the `humanScore` or `computerScore` variable based on the round winner.

```js
humanScore = 0;
computerScore = 0;
playRound("rock", "scissors");
assert.equal(humanScore, 1);
```

You should have a function called `playGame`.

```js
assert.isFunction(playGame);
```

You should use a loop to play 3 rounds.

```js
assert.match(playGame.toString(), /\bfor\s*\(/);
```

You should return the winner of the game based on who won the most rounds.

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

