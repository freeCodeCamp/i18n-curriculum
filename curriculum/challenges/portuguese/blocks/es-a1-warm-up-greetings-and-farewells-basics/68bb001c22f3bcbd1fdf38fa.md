---
id: 68bb001c22f3bcbd1fdf38fa
title: "Tarefa 1"
challengeType: 19
dashedName: task-1
---

<!-- (Audio) Elena: Hola -->

# --description--

`¡Bienvenidos!`  
Welcome to the A1 Professional Spanish course!

Este é um **curso elementar** focado em ensinar a você o básico da língua espanhola. 

A seção em que você está agora é chamada `warm-up`. É aqui que você será apresentado a novas palavras antes que elas apareçam em sentenças ou conversas mais longas.

Vamos começar praticando sua primeira palavra em espanhol.

# --instructions--

Ouça o áudio e responda à pergunta abaixo.  
Há apenas **uma** resposta correta. Se precisar de ajuda, clique na `explanation` no final da lição.

# --questions--

## --text--

O que o orador diz?

## --answers--

`Hola`

---

`Adiós`

### --feedback--

Isso significa o oposto do que o locutor diz. Abra a seção de explicação se precisar de mais ajuda.

---

`Chao`

### --feedback--

Isso significa o oposto do que o falante diz. Abra a seção de explicação se precisar de mais ajuda.

---

`Gracias`

### --feedback--

Esta é uma palavra educada, mas não é o que você ouve no áudio.

## --video-solution--

1

# --explanation--

A palavra `Hola` é uma saudação. É usada quando você encontra alguém, semelhante a "Hello" ou "Hi" em inglês. Por exemplo:

`Hola, Buenos Días` – Olá, bom dia!  

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "Elena",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_1.1.mp3",
      "startTime": 1,
      "startTimestamp": 0.35,
      "finishTimestamp": 1.0
    }
  },
  "commands": [
    {
      "character": "Elena",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Elena",
      "startTime": 1,
      "finishTime": 1.65,
      "dialogue": {
        "text": "Hola",
        "align": "center"
      }
    },
    {
      "character": "Elena",
      "opacity": 0,
      "startTime": 2.15
    }
  ]
}
```
