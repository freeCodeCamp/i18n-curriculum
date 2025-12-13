---
id: 68bb001c22f3bcbd1fdf38fa
title: Tarefa 1
challengeType: 19
dashedName: task-1
lang: es
---

<!-- (Audio) Elena: Hola -->

# --description--

Elena quer dizer "hi". Você ouvirá essa palavra o tempo todo em espanhol quando as pessoas se encontram.

# --instructions--

Ouça o áudio e responda à pergunta abaixo.  
Há apenas **uma** resposta correta. Se precisar de ajuda, clique em **explanation** na parte inferior da lição.

# --questions--

## --text--

Que palavra Elena usa para dizer "hi"?

## --answers--

`Hola`

---

`Adiós`

### --feedback--

Isso significa o oposto do que o locutor diz. Abra a seção de explicação se precisar de mais ajuda.

---

`Chao`

### --feedback--

Isso significa o oposto do que o locutor diz. Abra a seção de explicação se precisar de mais ajuda.

---

`Buenos días`

### --feedback--

Isso significa "Good morning", mas não é o que você ouve no áudio.

## --video-solution--

1

# --explanation--

A palavra `Hola` é uma saudação. É usada quando você encontra alguém, semelhante a "Hello" ou "Hi". Por exemplo:

`¡Hola, buenos días!` – Olá, bom dia! 

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
          "y": 25,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_spanish_greetings_in_the_morning.mp3",
      "startTime": 1,
      "startTimestamp": 0.35,
      "finishTimestamp": 0.9
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
      "finishTime": 1.55,
      "dialogue": {
        "text": "¡Hola!",
        "align": "center"
      }
    },
    {
      "character": "Elena",
      "opacity": 0,
      "startTime": 2.05
    }
  ]
}
```
