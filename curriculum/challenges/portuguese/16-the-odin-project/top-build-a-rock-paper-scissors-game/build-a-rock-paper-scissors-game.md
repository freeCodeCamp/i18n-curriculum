---
id: 66629f407d679d3105e8317f
title: Crie um jogo de pedra, papel e tesoura
challengeType: 14
dashedName: top-build-a-rock-paper-scissors-game
---

# --description--
O jogo será jogado contra o computador. Você escreverá uma função que retorna aleatoriamente `"rock"`, `"paper"` ou `"scissors"`.

Você não precisa se preocupar com a parte de front-end do jogo. Você apenas escreverá a lógica para o jogo. Abra `script.js` e comece a seguir as instruções.

**Histórias de usuário:**

1. Você deve ter uma função chamada `getComputerChoice`.

1. A função `getComputerChoice` deve retornar `"rock"`, `"paper"` ou `"scissors"` aleatoriamente.

**Dica:** o método [Math.random](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math/random) retorna um número aleatório maior ou igual a 0 e menor que 1. Pense em como você pode usar isso para condicionalmente retornar uma das escolhas.

O jogo será jogado por um jogador humano. Você escreverá uma função que recebe a escolha do usuário e a retorna.

1. Crie uma função chamada `getHumanChoice`.

1. Escreva o código para que `getHumanChoice` retorne uma das escolhas válidas, dependendo da entrada do usuário.

**Dica:** use o método [prompt](https://developer.mozilla.org/en-US/docs/Web/API/Window/prompt) para obter a entrada do usuário.

O jogo acompanhará a pontuação do jogador. Você escreverá variáveis para acompanhar a pontuação do jogador.

1. Crie duas variáveis chamadas `humanScore` e `computerScore` no escopo global.

1. Inicialize essas variáveis com o valor de `0`.

O jogo será jogado rodada por rodada. Você escreverá uma função que recebe as escolhas do jogador humano e do computador como argumentos, joga uma única rodada, incrementa a pontuação do vencedor da rodada e registra o anúncio do vencedor.

1. Crie uma função chamada `playRound`.

1. Defina dois parâmetros para `playRound`. O parâmetro um será `humanChoice` e o parâmetro dois será `computerChoice`. Use esses dois parâmetros para receber as escolhas do humano e do computador como argumentos.

1. Certifique-se de que o parâmetro `humanChoice` da função não faça a distinção entre maiúsculas e minúsculas para que os jogadores possam digitar `"rock"`, `"ROCK"`, `"RocK"` ou outras variações.

1. Escreva o código para a função `playRound`, que retorna um valor de string representando o vencedor da rodada.

- Se for empate, ela deve retornar `"It's a tie!"`.

- Se o jogador ganhar, ela deve retornar `"You win! [player choice] beats [computer choice]"`.

- Se o computador ganhar, ela deve retornar `"You lose! [computer choice] beats [player choice]"`.

1. Incremente a variável `humanScore` ou `computerScore` com base no vencedor da rodada.

O jogo terá 3 rodadas. Você escreverá uma função chamada `playGame` que chama `playRound` para jogar 3 rodadas, mantém o controle das pontuações e declara um vencedor no final.

1. Crie uma função chamada `playGame`.

1. Crie um laço que é executado por 3 rodadas e chame a função `playRound` a cada vez, com as funções de escolha do humano e do computador como argumentos.

1. No final do jogo, retorne o vencedor do jogo com base em quem ganhou mais rodadas.

- Se o jogador humano ganhar mais rodadas que o computador, retorne uma mensagem que diga `"You win the game!"`.

- Se o computador ganhar mais rodadas que o jogador humano, retorne uma mensagem que diga `"You lose the game!"`.

# --hints--

Você deve ter uma função chamada `getComputerChoice`

```js
assert.isFunction(getComputerChoice);
```

A função `getComputerChoice` deve retornar `"rock"`, `"paper"` ou `"scissors"` aleatoriamente.

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

Você deve ter uma função chamada `getHumanChoice`

```js
assert.isFunction(getHumanChoice);
```

Você deve ter duas variáveis chamadas `humanScore` e `computerScore` no escopo global.

```js
assert.exists(humanScore);
assert.exists(computerScore);
```

Você deve ter uma função chamada `playRound`

```js
assert.isFunction(playRound);
```

A função `playRound` deve receber as escolhas do jogador humano e do computador como argumentos com os parâmetros `humanChoice` e `computerChoice`.

```js
assert.match(playRound.toString(), /\s*(?:\bhumanChoice\b\s*,\s*\bcomputerChoice\b)/);
```

A função `playRound` não deve distinguir maiúsculas de minúsculas para que os jogadores possam digitar `"rock"`, `"ROCK"`, `"RocK"` ou outras variações.

```js
assert.match(playRound.toString(), /\bhumanChoice\s*\.toLowerCase\(\)/);
```

A função `playRound` deve retornar a string `"It's a tie!"` se as escolhas do humano e do computador forem as mesmas.

```js
assert.equal(playRound("rock", "rock"), "It's a tie!");
```

A função `playRound` deve retornar a string `"You win! [player choice] beats [computer choice]"` se o jogador ganhar.

```js
assert.equal(playRound("rock", "scissors"), "You win! rock beats scissors");
```

A função `playRound` deve retornar a string `"You lose! [computer choice] beats [player choice]"` se o computador ganhar.

```js
assert.equal(playRound("rock", "paper"), "You lose! paper beats rock");
```

A função `playRound` deve incrementar a variável `humanScore` ou `computerScore` com base no vencedor da rodada.

```js
humanScore = 0;
computerScore = 0;
playRound("rock", "scissors");
assert.equal(humanScore, 1);
```

Você deve ter uma função chamada `playGame`.

```js
assert.isFunction(playGame);
```

Você deve usar um laço para jogar 3 rodadas.

```js
assert.match(playGame.toString(), /\bfor\s*\(/);
```

Você deve retornar o vencedor do jogo com base em quem ganhou mais rodadas.

```js
window.prompt = () => "rock";
assert.match(playGame(), /You (win|lose) the game!/);
```

# --seed--

## --seed-contents--

```js
const hand = ['rock', 'paper', 'scissors'];
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

